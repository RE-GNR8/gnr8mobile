class Project {
  final String id;
  final Owner owner;
  final String name;
  final String image;
  final String description;
  late final String? video;
  late final Hypercert? hypercert;
  late final List<BaseDocument>? documents;
  Project({
    required this.owner,
    required this.id,
    required this.description,
    required this.image,
    required this.name,
    this.video,
    this.hypercert,
    this.documents,
  });
}

class Owner {}

class BaseDocument {
  final String name;
  final String type;
  final String uri;
  BaseDocument({required this.name, required this.type, required this.uri});
}

class Hypercert {
  Hypercert({
    required this.workScope,
    required this.impactScope,
    required this.workTimeframe,
    required this.impactTimeframe,
    required this.contributors,
    required this.rights,
  });
  late final WorkScope workScope;
  late final ImpactScope impactScope;
  late final WorkTimeframe workTimeframe;
  late final ImpactTimeframe impactTimeframe;
  late final Contributors contributors;
  late final Rights rights;

  Hypercert.fromJson(Map<String, dynamic> json) {
    workScope = WorkScope.fromJson(json['work_scope']);
    impactScope = ImpactScope.fromJson(json['impact_scope']);
    workTimeframe = WorkTimeframe.fromJson(json['work_timeframe']);
    impactTimeframe = ImpactTimeframe.fromJson(json['impact_timeframe']);
    contributors = Contributors.fromJson(json['contributors']);
    rights = Rights.fromJson(json['rights']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['work_scope'] = workScope.toJson();
    _data['impact_scope'] = impactScope.toJson();
    _data['work_timeframe'] = workTimeframe.toJson();
    _data['impact_timeframe'] = impactTimeframe.toJson();
    _data['contributors'] = contributors.toJson();
    _data['rights'] = rights.toJson();
    return _data;
  }
}

class WorkScope {
  WorkScope({
    required this.name,
    required this.value,
    required this.excludes,
    required this.displayValue,
  });
  late final String name;
  late final List<String> value;
  late final List<dynamic> excludes;
  late final String displayValue;

  WorkScope.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    value = List.castFrom<dynamic, String>(json['value']);
    excludes = List.castFrom<dynamic, dynamic>(json['excludes']);
    displayValue = json['display_value'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['value'] = value;
    _data['excludes'] = excludes;
    _data['display_value'] = displayValue;
    return _data;
  }
}

class ImpactScope {
  ImpactScope({
    required this.name,
    required this.value,
    required this.excludes,
    required this.displayValue,
  });
  late final String name;
  late final List<String> value;
  late final List<dynamic> excludes;
  late final String displayValue;

  ImpactScope.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    value = List.castFrom<dynamic, String>(json['value']);
    excludes = List.castFrom<dynamic, dynamic>(json['excludes']);
    displayValue = json['display_value'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['value'] = value;
    _data['excludes'] = excludes;
    _data['display_value'] = displayValue;
    return _data;
  }
}

class WorkTimeframe {
  WorkTimeframe({
    required this.name,
    required this.value,
    required this.displayValue,
  });
  late final String name;
  late final List<int> value;
  late final String displayValue;

  WorkTimeframe.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    value = List.castFrom<dynamic, int>(json['value']);
    displayValue = json['display_value'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['value'] = value;
    _data['display_value'] = displayValue;
    return _data;
  }
}

class ImpactTimeframe {
  ImpactTimeframe({
    required this.name,
    required this.value,
    required this.displayValue,
  });
  late final String name;
  late final List<int> value;
  late final String displayValue;

  ImpactTimeframe.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    value = List.castFrom<dynamic, int>(json['value']);
    displayValue = json['display_value'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['value'] = value;
    _data['display_value'] = displayValue;
    return _data;
  }
}

class Contributors {
  Contributors({
    required this.name,
    required this.value,
    required this.displayValue,
  });
  late final String name;
  late final List<String> value;
  late final String displayValue;

  Contributors.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    value = List.castFrom<dynamic, String>(json['value']);
    displayValue = json['display_value'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['value'] = value;
    _data['display_value'] = displayValue;
    return _data;
  }
}

class Rights {
  Rights({
    required this.name,
    required this.value,
    required this.displayValue,
  });
  late final String name;
  late final List<String> value;
  late final String displayValue;

  Rights.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    value = List.castFrom<dynamic, String>(json['value']);
    displayValue = json['display_value'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['value'] = value;
    _data['display_value'] = displayValue;
    return _data;
  }
}
