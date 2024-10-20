import 'package:editorjs_flutter/src/model/EditorJSBlockData.dart';
import 'package:json_annotation/json_annotation.dart';

part 'EditorJSBlock.g.dart';

@JsonSerializable()
class EditorJSBlock {
  final String? type;
  final EditorJSBlockData? data;

  EditorJSBlock({this.type, this.data});

  factory EditorJSBlock.fromJson(Map<String, dynamic> parsedJson) => _$EditorJSBlockFromJson(parsedJson);
  Map<String, dynamic> toJson() => _$EditorJSBlockToJson(this);
}
