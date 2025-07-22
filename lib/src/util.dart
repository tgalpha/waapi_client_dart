import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:xml/xml.dart';

enum WaapiProtocol { wamp, http }

const int kDefaultWaapiWampPort = 8080;
const int kDefaultWaapiHttpPort = 8090;

String? getWwiseGlobalSettingsFilePath() {
  if (Platform.isWindows) {
    if (!Platform.environment.containsKey('AppData')) {
      return null;
    }
    return path.join(Platform.environment['AppData']!, 'Audiokinetic', 'Wwise', 'Wwise.wsettings');
  }
  // Wwise authoring is either on windows or mac
  return path.join('/Users', Platform.environment['USER'] ?? 'Shared', 'Library', 'Application Support', 'Audiokinetic', 'Wwise', 'Wwise.wsettings');
}

int findWaapiPort([WaapiProtocol protocol = WaapiProtocol.wamp]) {
  int defaultPort = protocol == WaapiProtocol.wamp ? kDefaultWaapiWampPort : kDefaultWaapiHttpPort;
  final wwiseSettingsPath = getWwiseGlobalSettingsFilePath();
  if (wwiseSettingsPath == null) {
    return defaultPort;
  }
  File wwiseSettings = File(wwiseSettingsPath);
  if (!wwiseSettings.existsSync()){
    return defaultPort;
  }

  final propertyName = protocol == WaapiProtocol.wamp ? 'Waapi\\WampPort' : 'Waapi\\HttpPort';
  final settings = XmlDocument.parse(wwiseSettings.readAsStringSync());
  for (final property in settings.findAllElements('Property')) {
    final name = property.getAttribute('Name');
    if (name == propertyName) {
      final valueStr = property.getAttribute('Value');
      if (valueStr != null) {
        return int.tryParse(valueStr) ?? defaultPort;
      }
    }
  }

  return defaultPort;
}
