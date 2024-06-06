import 'package:waapi_client_dart/waapi_client_dart.dart';


void main() async {
  final client = WaapiClient();
  try {
    await client.connect();

    final result = await client.getWwiseInfo();
    print('Wwise info: $result');

    final projPath = await client.queryProjectPath();
    print('Project path: $projPath');

    final res = await client.call(
      WaapiUri.ak_wwise_core_object_get,
      args: {
        "from": {
          "path": ["\\Actor-Mixer Hierarchy\\Default Work Unit"],
        }
      },
    );
    print('Object get: $res');
  } finally {
    await client.disconnect();
  }
}
