import 'package:waapi_client_dart/waapi_client_dart.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final client = WaapiClient();

    setUp(() async {
      // Additional setup goes here.
      await client.connect();
    });

    test('waapi function call', () async {
      final res = await client.getWwiseInfo();
      // expect();
    });
  });
}
