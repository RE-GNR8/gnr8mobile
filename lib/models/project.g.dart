// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Project _$ProjectFromJson(Map<String, dynamic> json) => Project(
      membershipCost: (json['membershipCost'] as num).toDouble(),
      goal: (json['goal'] as num).toDouble(),
      logo: json['logo'] as String,
      location: json['location'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      contract: json['contract'] as String,
      extension: (json['extension'] as num).toDouble(),
      owner: json['owner'] == null
          ? null
          : Regen.fromJson(json['owner'] as Map<String, dynamic>),
      id: json['id'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
      name: json['name'] as String,
      raised: (json['raised'] as num?)?.toDouble(),
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      impact: (json['impact'] as List<dynamic>?)
          ?.map((e) => EcosystemService.fromJson(e as Map<String, dynamic>))
          .toList(),
      sdgs: (json['sdgs'] as List<dynamic>?)
          ?.map((e) => SDG.fromJson(e as Map<String, dynamic>))
          .toList(),
      gallery:
          (json['gallery'] as List<dynamic>?)?.map((e) => e as String).toList(),
      video: json['video'] as String?,
      escert: json['escert'] == null
          ? null
          : ESCert.fromJson(json['escert'] as Map<String, dynamic>),
      benefits: (json['benefits'] as List<dynamic>?)
          ?.map((e) => Benefit.fromJson(e as Map<String, dynamic>))
          .toList(),
      documents: (json['documents'] as List<dynamic>?)
          ?.map((e) => BaseDocument.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProjectToJson(Project instance) => <String, dynamic>{
      'id': instance.id,
      'owner': instance.owner,
      'name': instance.name,
      'image': instance.image,
      'logo': instance.logo,
      'description': instance.description,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'contract': instance.contract,
      'location': instance.location,
      'extension': instance.extension,
      'goal': instance.goal,
      'membershipCost': instance.membershipCost,
      'raised': instance.raised,
      'startDate': instance.startDate?.toIso8601String(),
      'impact': instance.impact,
      'sdgs': instance.sdgs,
      'video': instance.video,
      'gallery': instance.gallery,
      'escert': instance.escert,
      'documents': instance.documents,
      'benefits': instance.benefits,
    };

Benefit _$BenefitFromJson(Map<String, dynamic> json) => Benefit(
      description: json['description'] as String,
      link: json['link'] as String,
      logo: json['logo'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$BenefitToJson(Benefit instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'logo': instance.logo,
      'link': instance.link,
    };

Regen _$RegenFromJson(Map<String, dynamic> json) => Regen(
      address: json['address'] as String?,
      name: json['name'] as String?,
      avatar: json['avatar'] as String?,
      blurb: json['blurb'] as String?,
    );

Map<String, dynamic> _$RegenToJson(Regen instance) => <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'blurb': instance.blurb,
      'avatar': instance.avatar,
    };

BaseDocument _$BaseDocumentFromJson(Map<String, dynamic> json) => BaseDocument(
      type: json['type'] as String,
      name: json['name'] as String,
      uri: json['uri'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$BaseDocumentToJson(BaseDocument instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'uri': instance.uri,
      'description': instance.description,
    };
