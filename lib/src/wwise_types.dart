/// Class Wrapper for waapi query results. Provides a simple way to access common fields.
class WObject {
  final Map<String, dynamic> raw;

  WObject(this.raw);

  static WObject? from(Map<String, dynamic>? raw) {
    if (raw == null) {
      return null;
    }
    return WObject(raw);
  }

  dynamic operator [](String key) => raw[key];

  String? get id => raw['id'];

  String? get name => raw['name'];

  String? get notes => raw['notes'];

  String? get type => raw['type'];

  String? get pluginName => raw['pluginName'];

  int? get shortId => raw['shortId'];

  int? get classId => raw['classId'];

  String? get category => raw['category'];

  String? get filePath => raw['filePath'];

  WObject? get workunit => WObject.from(raw['workunit']);

  WObject? get parent => WObject.from(raw['parent']);

  WObject? get owner => WObject.from(raw['owner']);

  String? get path => raw['path'];

  bool? get isPlayable => raw['isPlayable'];

  int? get totalSize => raw['totalSize'];

  int? get mediaSize => raw['mediaSize'];

  int? get objectSize => raw['objectSize'];

  int? get structureSize => raw['structureSize'];

  String? get soundConvertedWemFilePath => raw['sound:convertedWemFilePath'];

  String? get soundOriginalWavFilePath => raw['sound:originalWavFilePath'];

  String? get soundbankBnkFilePath => raw['soundbank:bnkFilePath'];

  String? get audioSourcePlaybackDuration =>
      raw['audioSource:playbackDuration'];

  String? get audioSourceMaxDurationSource =>
      raw['audioSource:maxDurationSource'];

  WAudioSourceTrimValues? get audioSourceTrimValues =>
      WAudioSourceTrimValues.from(raw['audioSource:trimValues']);

  String? get audioSourceMaxRadiusAttenuation =>
      raw['audioSource:maxRadiusAttenuation'];

  WObject? get audioSourceLanguage => WObject.from(raw['audioSource:language']);

  bool? get workunitIsDefault => raw['workunit:isDefault'];

  String? get workunitType => raw['workunit:type'];

  bool? get workunitIsDirty => raw['workunit:isDirty'];

  String? get switchContainerChildContextId =>
      raw['switchContainerChild:context']?['id'];

  String? get convertedWemFilePath => raw['convertedWemFilePath'];

  String? get originalFilePath => raw['originalFilePath'];

  String? get originalRelativeFilePath => raw['originalRelativeFilePath'];

  String? get convertedFilePath => raw['convertedFilePath'];

  String? get originalWavFilePath => raw['originalWavFilePath'];

  WDuration? get duration => WDuration.from(raw['duration']);

  WMaxDurationSource? get maxDurationSource =>
      WMaxDurationSource.from(raw['maxDurationSource']);

  WMaxRadiusAttenuation? get maxRadiusAttenuation =>
      WMaxRadiusAttenuation.from(raw['maxRadiusAttenuation']);

  bool? get isExplicitMute => raw['isExplicitMute'];

  bool? get isExplicitSolo => raw['isExplicitSolo'];

  bool? get isImplicitMute => raw['isImplicitMute'];

  bool? get isImplicitSolo => raw['isImplicitSolo'];

  bool? get isIncluded => raw['isIncluded'];

  List<WPoint>? get points => raw['points']
      ?.map<WPoint>((e) => WPoint(e['x'], e['y'], e['shape']))
      .toList();

  List<String>? get stateProperties => raw['stateProperties']?.cast<String>();

  List<WObject>? get stateGroups =>
      raw['stateGroups']?.map<WObject>((e) => WObject.from(e)!).toList();
}

/// The duration root that contains the min and max durations and duration type.
/// This applies to all objects that can contain Audio Source objects,
/// either directly as a source or indirectly through descendants.
class WDuration {
  double min;
  double max;
  String type;

  WDuration(this.min, this.max, this.type);

  static WDuration? from(Map<String, dynamic>? raw) {
    if (raw == null) {
      return null;
    }
    return WDuration(raw['min'], raw['max'], raw['type']);
  }
}

/// Audio source with the longest duration.
/// This applies to all objects that can contain Audio Source objects,
/// either directly as a source or indirectly through descendants.
class WMaxDurationSource {
  String id;
  double trimmedDuration;

  WMaxDurationSource(this.id, this.trimmedDuration);

  static WMaxDurationSource? from(Map<String, dynamic>? raw) {
    if (raw == null) {
      return null;
    }
    return WMaxDurationSource(raw['id'], raw['trimmedDuration']);
  }
}

/// Range of time for which the audio source is trimmed.
class WAudioSourceTrimValues {
  double trimBegin;
  double trimEnd;

  WAudioSourceTrimValues(this.trimBegin, this.trimEnd);

  static WAudioSourceTrimValues? from(Map<String, dynamic>? raw) {
    if (raw == null) {
      return null;
    }
    return WAudioSourceTrimValues(raw['trimBegin'], raw['trimEnd']);
  }
}

/// Attenuation with the largest radius.
/// This applies to all objects that can contain Audio Source objects,
/// either directly as a source or indirectly through descendants.
class WMaxRadiusAttenuation {
  String id;
  double radius;

  WMaxRadiusAttenuation(this.id, this.radius);

  static WMaxRadiusAttenuation? from(Map<String, dynamic>? raw) {
    if (raw == null) {
      return null;
    }
    return WMaxRadiusAttenuation(raw['id'], raw['radius']);
  }
}

/// A point in the curve.
class WPoint {
  double x;
  double y;
  String shape;

  WPoint(this.x, this.y, this.shape);
}
