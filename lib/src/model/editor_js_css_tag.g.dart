// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editor_js_css_tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EditorJSCSSTag _$EditorJSCSSTagFromJson(Map<String, dynamic> json) =>
    _EditorJSCSSTag(
      tag: json['tag'] as String?,
      backgroundColor: json['backgroundColor'] as String?,
      color: json['color'] as String?,
      padding: (json['padding'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$EditorJSCSSTagToJson(_EditorJSCSSTag instance) =>
    <String, dynamic>{
      if (instance.backgroundColor case final value?) 'backgroundColor': value,
      if (instance.color case final value?) 'color': value,
      if (instance.padding case final value?) 'padding': value,
    };
