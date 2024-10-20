// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'EditorJSData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditorJSData _$EditorJSDataFromJson(Map<String, dynamic> json) => EditorJSData(
      time: (json['time'] as num?)?.toInt(),
      version: json['version'] as String?,
      blocks: (json['blocks'] as List<dynamic>?)
          ?.map((e) => EditorJSBlock.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EditorJSDataToJson(EditorJSData instance) =>
    <String, dynamic>{
      'time': instance.time,
      'version': instance.version,
      'blocks': instance.blocks,
    };
