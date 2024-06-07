[Wwise Authoring API (Waapi)](https://www.audiokinetic.com/en/library/edge/?source=SDK&id=waapi_index.html) Client for Dart.

## Features
- Waapi call function
- Waapi subscribe topic
- Waapi uri constants
- TODO: 
  - Typed Waapi objects
  - Wrapped functions

## Usage

### Waapi call
```dart
import 'package:waapi_client_dart/waapi_client_dart.dart';

void main() async {
  final client = WaapiClient();
  try {
    await client.connect();

    final object = await client.call(
      WaapiUri.ak_wwise_core_object_get,
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
  } finally {
    await client.disconnect();
  }
}
```

### Waapi subscribe
```dart
import 'package:waapi_client_dart/waapi_client_dart.dart';

void main() async {
  final client = WaapiClient();
  try {
    await client.connect();

    final objectDeleteStream = await client.subscribe(WaapiUri.ak_wwise_core_object_postdeleted);
    final objectDeleteSub = objectDeleteStream.listen((event) {
      print('Object deleted: $event');
    });

    final objectCreateStream = await client.subscribe(WaapiUri.ak_wwise_core_object_created);
    final objectCreateSub = objectCreateStream.listen((event) async {
      print('Object created: $event');
      await Future.delayed(const Duration(milliseconds: 200));
      await client.call(WaapiUri.ak_wwise_core_object_delete, args: {
        'object': event?['object']['id'],
      });
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
    await Future.delayed(const Duration(milliseconds: 300));
    await objectDeleteSub.cancel();
    await objectCreateSub.cancel();
  } finally {
    await client.disconnect();
  }
}
```
