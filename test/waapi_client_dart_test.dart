import 'package:logger/logger.dart';
import 'package:waapi_client_dart/waapi_client_dart.dart';
import 'package:test/test.dart';

void main() {
  final logger = Logger();
  group('A group of tests', () {
    final client = WaapiClient();

    setUp(() async {
      logger.w('Must open Wwise Authoring to run tests.');
      // Additional setup goes here.
      await client.connect();
    });

    test('waapi function call', () async {
      final res = await client.getWwiseInfo();
      expect(res, isNotNull);
    });
  });
}
