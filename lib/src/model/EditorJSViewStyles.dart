import 'package:editorjs_flutter/src/model/EditorJSCSSTag.dart';
import 'package:json_annotation/json_annotation.dart';

part 'EditorJSViewStyles.g.dart';

@JsonSerializable()
class EditorJSViewStyles {
  final List<EditorJSCSSTag>? cssTags;
  final String? defaultFont;

  EditorJSViewStyles({this.cssTags, this.defaultFont});

  factory EditorJSViewStyles.fromJson(Map<String, dynamic> parsedJson) => _$EditorJSViewStylesFromJson(parsedJson);
  Map<String, dynamic> toJson() => _$EditorJSViewStylesToJson(this);
}
