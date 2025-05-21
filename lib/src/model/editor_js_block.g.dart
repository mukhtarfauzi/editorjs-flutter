// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editor_js_block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EditorJSBlock _$EditorJSBlockFromJson(Map<String, dynamic> json) =>
    _EditorJSBlock(
      type: json['type'] as String?,
      data: json['data'] == null
          ? null
          : EditorJSBlockData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EditorJSBlockToJson(_EditorJSBlock instance) =>
    <String, dynamic>{
      'type': instance.type,
      'data': instance.data,
    };
