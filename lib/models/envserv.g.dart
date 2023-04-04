// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'envserv.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EcosystemService _$EcosystemServiceFromJson(Map<String, dynamic> json) =>
    EcosystemService(
      category: json['category'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$EcosystemServiceToJson(EcosystemService instance) =>
    <String, dynamic>{
      'description': instance.description,
      'category': instance.category,
      'icon': instance.icon,
      'name': instance.name,
    };
