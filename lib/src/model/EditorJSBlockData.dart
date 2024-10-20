import 'package:editorjs_flutter/src/model/EditorJSBlockFile.dart';
import 'package:json_annotation/json_annotation.dart';

part 'EditorJSBlockData.g.dart';

@JsonSerializable()
class EditorJSBlockData {
  final String? text;
  final int? level;
  final String? style;
  final List<String>? items;
  final EditorJSBlockFile? file;
  final String? caption;
  final bool? withBorder;
  final bool? stretched;
  final bool? withBackground;

  EditorJSBlockData(
      {this.text,
      this.level,
      this.style,
      this.items,
      this.file,
      this.caption,
      this.withBorder,
      this.stretched,
      this.withBackground});

  factory EditorJSBlockData.fromJson(Map<String, dynamic> parsedJson) => _$EditorJSBlockDataFromJson(parsedJson);
  Map<String, dynamic> toJson() => _$EditorJSBlockDataToJson(this);
}
