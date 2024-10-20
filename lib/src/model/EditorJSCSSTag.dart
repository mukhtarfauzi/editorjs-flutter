
import 'package:json_annotation/json_annotation.dart';

part 'EditorJSCSSTag.g.dart';

@JsonSerializable()
class EditorJSCSSTag {
  final String? tag;
  final String? backgroundColor;
  final String? color;
  final double? padding;

  EditorJSCSSTag({this.tag, this.backgroundColor, this.color, this.padding});

  factory EditorJSCSSTag.fromJson(Map<String, dynamic> parsedJson) => _$EditorJSCSSTagFromJson(parsedJson);
  Map<String, dynamic> toJson() => _$EditorJSCSSTagToJson(this);
}
