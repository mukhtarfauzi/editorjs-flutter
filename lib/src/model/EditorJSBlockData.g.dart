// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'EditorJSBlockData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditorJSBlockData _$EditorJSBlockDataFromJson(Map<String, dynamic> json) =>
    EditorJSBlockData(
      text: json['text'] as String?,
      level: (json['level'] as num?)?.toInt(),
      style: json['style'] as String?,
      items:
          (json['items'] as List<dynamic>?)?.map((e) => e as String).toList(),
      file: json['file'] == null
          ? null
          : EditorJSBlockFile.fromJson(json['file'] as Map<String, dynamic>),
      caption: json['caption'] as String?,
      withBorder: json['withBorder'] as bool?,
      stretched: json['stretched'] as bool?,
      withBackground: json['withBackground'] as bool?,
    );

Map<String, dynamic> _$EditorJSBlockDataToJson(EditorJSBlockData instance) =>
    <String, dynamic>{
      'text': instance.text,
      'level': instance.level,
      'style': instance.style,
      'items': instance.items,
      'file': instance.file,
      'caption': instance.caption,
      'withBorder': instance.withBorder,
      'stretched': instance.stretched,
      'withBackground': instance.withBackground,
    };
