// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editor_js_view_styles.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EditorJSViewStyles _$EditorJSViewStylesFromJson(Map<String, dynamic> json) =>
    _EditorJSViewStyles(
      cssTags: (json['cssTags'] as List<dynamic>?)
          ?.map((e) => EditorJSCSSTag.fromJson(e as Map<String, dynamic>))
          .toList(),
      defaultFont: json['defaultFont'] as String?,
    );

Map<String, dynamic> _$EditorJSViewStylesToJson(_EditorJSViewStyles instance) =>
    <String, dynamic>{
      'cssTags': instance.cssTags,
      'defaultFont': instance.defaultFont,
    };
