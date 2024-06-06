import 'package:waapi_client_dart/waapi_client_dart.dart';

void main() async {
  final client = WaapiClient();
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
    WaapiUri.ak_wwise_core_object_get,
    args: {
      'from': {
        'path': ['\\Actor-Mixer Hierarchy\\Default Work Unit'],
      }
    },
  );
  print('Object get: $object');
}

Future<void> waapiSubscriptions(WaapiClient client) async {
  client.subscribe(WaapiUri.ak_wwise_core_object_created).then((stream) async {
    await for (final event in stream) {
      print('Object created: $event');
    }
  });

  await client.call(
    WaapiUri.ak_wwise_core_object_create,
    args: {
      'parent': '\\Actor-Mixer Hierarchy\\Default Work Unit',
      'type': 'RandomSequenceContainer',
      'name': 'RandomSequenceContainer',
      'onNameConflict': 'rename',
    },
  );

  await Future.delayed(const Duration(milliseconds: 500));
}
