// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'EditorJSBlock.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditorJSBlock _$EditorJSBlockFromJson(Map<String, dynamic> json) =>
    EditorJSBlock(
      type: json['type'] as String?,
      data: json['data'] == null
          ? null
          : EditorJSBlockData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EditorJSBlockToJson(EditorJSBlock instance) =>
    <String, dynamic>{
      'type': instance.type,
      'data': instance.data,
    };
