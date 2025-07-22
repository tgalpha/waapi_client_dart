import 'package:waapi_client_dart/waapi_client_dart.dart';

extension WaapiClientExtension on WaapiClient {
  Future<Map?> getWwiseInfo() async {
    return await call(WaapiUri.akWwiseCoreGetInfo);
  }

  Future<String?> queryProjectPath() async {
    final result = await call(
      WaapiUri.akWwiseCoreObjectGet,
      args: {
        'from': {
          'ofType': ['Project']
        }
      },
      options: {
        'return': ['filePath']
      },
    );

    if (result == null || result['return'].isEmpty) {
      return null;
    }

    return result['return'][0]['filePath'];
  }
}
