import 'dart:async';

import 'package:logger/logger.dart';
import 'package:wamp_client/wamp_client.dart';
import 'package:waapi_client_dart/src/uri.dart';

class WaapiClient {
  final String url;
  final _client = WampClient('realm1');
  bool _connected = false;

  /// Allow errors on call and subscribe to throw an exception. Default is false.
  final bool _allowException;
  final Logger _logger;

  WaapiClient({
    int port = 8080,
    String host = '127.0.0.1',
    bool allowException = false,
    Logger? logger,
  })  : url = 'ws://$host:$port/waapi',
        _allowException = allowException,
        _logger = logger ?? Logger(level: Level.warning) {
    _client.onDisconnect = (_) {
      _connected = false;
      _logger.d('WAAPI client disconnected!');
    };
    _client.onConnect = (c) {
      _connected = true;
      _logger.d('WAAPI client connected!');
    };
  }

  bool isConnected() {
    return _connected;
  }

  Future<void> connect() async {
    if (isConnected()) {
      return;
    }
    _client.connect(url);

    while (!isConnected()) {
      await Future.delayed(const Duration(milliseconds: 100));
    }
  }

  Future<void> disconnect() async {
    await _client.close();
  }

  Future<Map?> call(
    String uri, {
    Map<String, dynamic> args = const {},
    Map<String, dynamic> options = const {},
  }) async {
    try {
      final res = await _client.call(uri, [], args, options);
      return res.params;
    } on WampArgs catch (e) {
      _logger.w('WAAPI call error: $e');
      if (_allowException) {
        rethrow;
      }
      return null;
    }
  }

  Future<Stream<Map?>> subscribe(
    String uri, {
    Map<String, dynamic> options = const {},
  }) async {
    final stream = await _client.subscribe(uri, options);
    return stream.map((e) => e.args.params);
  }

  Future<Map?> getWwiseInfo() async {
    return await call(WaapiUri.akWwiseCoreGetInfo);
  }

  Future<String?> queryProjectPath() async {
    final result = await call(
      WaapiUri.akWwiseCoreObjectGet,
      args: {
        "from": {
          "ofType": ["Project"]
        }
      },
      options: {
        "return": ["filePath"]
      },
    );

    if (result == null || result['return'].isEmpty) {
      return null;
    }

    return result['return'][0]['filePath'];
  }
}
