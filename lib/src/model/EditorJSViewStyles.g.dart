// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'EditorJSViewStyles.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditorJSViewStyles _$EditorJSViewStylesFromJson(Map<String, dynamic> json) =>
    EditorJSViewStyles(
      cssTags: (json['cssTags'] as List<dynamic>?)
          ?.map((e) => EditorJSCSSTag.fromJson(e as Map<String, dynamic>))
          .toList(),
      defaultFont: json['defaultFont'] as String?,
    );

Map<String, dynamic> _$EditorJSViewStylesToJson(EditorJSViewStyles instance) =>
    <String, dynamic>{
      'cssTags': instance.cssTags,
      'defaultFont': instance.defaultFont,
    };
