import 'package:waapi_client_dart/waapi_client_dart.dart';

/// Arguments: <port>(optional)
void main(List<String> args) async {
  final client = WaapiClient(port: args.isNotEmpty ? int.parse(args[0]) : findWaapiPort());
  try {
    await client.connect();
    await waapiCalls(client);
    await waapiSubscriptions(client);
  } finally {
    await client.disconnect();
  }
}

Future<void> waapiCalls(WaapiClient client) async {
  final wwiseInfo = await client.getWwiseInfo();
  print('Wwise info: $wwiseInfo');

  final projPath = await client.queryProjectPath();
  print('Project path: $projPath');

  final object = await client.call(
    WaapiUri.akWwiseCoreObjectGet,
    args: {
      'from': {
        'path': ['\\Actor-Mixer Hierarchy\\Default Work Unit'],
      }
    },
    options: {
      'return': ['id', 'name', 'type', '@Inclusion'],
    },
  );
  print('Object get: $object');
}

Future<void> waapiSubscriptions(WaapiClient client) async {
  final objectDeleteStream =
      await client.subscribe(WaapiUri.akWwiseCoreObjectPostDeleted);
  final objectDeleteSub = objectDeleteStream.listen((event) {
    print('Object deleted: $event');
  });

  final objectCreateStream =
      await client.subscribe(WaapiUri.akWwiseCoreObjectCreated);
  final objectCreateSub = objectCreateStream.listen((event) async {
    print('Object created: $event');
    await Future.delayed(const Duration(milliseconds: 200));
    await client.call(WaapiUri.akWwiseCoreObjectDelete, args: {
      'object': event?['object']['id'],
    });
  });

  await client.call(
    WaapiUri.akWwiseCoreObjectCreate,
    args: {
      'parent': '\\Actor-Mixer Hierarchy\\Default Work Unit',
      'type': 'RandomSequenceContainer',
      'name': 'RandomSequenceContainer',
      'onNameConflict': 'rename',
    },
  );
  await Future.delayed(const Duration(milliseconds: 300));
  await objectDeleteSub.cancel();
  await objectCreateSub.cancel();
}
