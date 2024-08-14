import 'package:waapi_client_dart/waapi_client_dart.dart';

/// Arguments: <port> <event_id>
void main(List<String> args) async {
  final port = int.parse(args[0]);
  final eventId = args[1];
  final client = WaapiClient(port: port);
  try {
    await client.connect();
    await postEvent(client, eventId);
  } finally {
    await client.disconnect();
  }
}

Future<void> postEvent(WaapiClient client, String eventId) async {
  final res = await client.call(
    WaapiUri.akWwiseCoreTransportCreate,
    args: {
      'object': eventId
    },
  );
  if (res == null) {
    return;
  }
  try {
    while (true) {
      await client.call(
        WaapiUri.akWwiseCoreTransportExecuteAction,
        args: {
          'transport': res['transport'],
          'action': 'play',
        },
      );
      await Future.delayed(const Duration(milliseconds: 20));
    }
  }
  finally {
    await client.call(
      WaapiUri.akWwiseCoreTransportDestroy,
      args: {
        'transport': res['transport']
      },
    );
  }
}
