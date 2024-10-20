// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'EditorJSCSSTag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditorJSCSSTag _$EditorJSCSSTagFromJson(Map<String, dynamic> json) =>
    EditorJSCSSTag(
      tag: json['tag'] as String?,
      backgroundColor: json['backgroundColor'] as String?,
      color: json['color'] as String?,
      padding: (json['padding'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$EditorJSCSSTagToJson(EditorJSCSSTag instance) =>
    <String, dynamic>{
      'tag': instance.tag,
      'backgroundColor': instance.backgroundColor,
      'color': instance.color,
      'padding': instance.padding,
    };
