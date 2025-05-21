// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editor_js_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EditorJSData _$EditorJSDataFromJson(Map<String, dynamic> json) =>
    _EditorJSData(
      time: (json['time'] as num?)?.toInt(),
      version: json['version'] as String?,
      blocks: (json['blocks'] as List<dynamic>?)
          ?.map((e) => EditorJSBlock.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EditorJSDataToJson(_EditorJSData instance) =>
    <String, dynamic>{
      'time': instance.time,
      'version': instance.version,
      'blocks': instance.blocks,
    };
