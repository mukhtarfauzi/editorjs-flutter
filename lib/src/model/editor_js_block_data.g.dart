// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editor_js_block_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EditorJSBlockData _$EditorJSBlockDataFromJson(Map<String, dynamic> json) =>
    _EditorJSBlockData(
      text: json['text'] as String?,
      html: json['html'] as String?,
      level: (json['level'] as num?)?.toInt(),
      style: json['style'] as String?,
      items: json['items'] as List<dynamic>?,
      file: json['file'] == null
          ? null
          : EditorJSBlockFile.fromJson(json['file'] as Map<String, dynamic>),
      caption: json['caption'] as String?,
      withBorder: json['withBorder'] as bool?,
      stretched: json['stretched'] as bool?,
      withBackground: json['withBackground'] as bool?,
      service: json['service'] as String?,
      source: json['source'] as String?,
      embed: json['embed'] as String?,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
    );

Map<String, dynamic> _$EditorJSBlockDataToJson(_EditorJSBlockData instance) =>
    <String, dynamic>{
      'text': instance.text,
      'html': instance.html,
      'level': instance.level,
      'style': instance.style,
      'items': instance.items,
      'file': instance.file,
      'caption': instance.caption,
      'withBorder': instance.withBorder,
      'stretched': instance.stretched,
      'withBackground': instance.withBackground,
      'service': instance.service,
      'source': instance.source,
      'embed': instance.embed,
      'width': instance.width,
      'height': instance.height,
    };
