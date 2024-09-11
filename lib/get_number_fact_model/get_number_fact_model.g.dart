// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_number_fact_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetNumberFactModel _$GetNumberFactModelFromJson(Map<String, dynamic> json) =>
    GetNumberFactModel(
      text: json['text'] as String?,
      number: (json['number'] as num?)?.toInt(),
      found: json['found'] as bool?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$GetNumberFactModelToJson(GetNumberFactModel instance) =>
    <String, dynamic>{
      'text': instance.text,
      'number': instance.number,
      'found': instance.found,
      'type': instance.type,
    };
