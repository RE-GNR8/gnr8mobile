// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sdg.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SDG _$SDGFromJson(Map<String, dynamic> json) => SDG(
      name: json['name'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
      number: json['number'] as int,
    );

Map<String, dynamic> _$SDGToJson(SDG instance) => <String, dynamic>{
      'name': instance.name,
      'icon': instance.icon,
      'description': instance.description,
      'number': instance.number,
    };
