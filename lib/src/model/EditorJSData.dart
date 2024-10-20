import 'package:editorjs_flutter/src/model/EditorJSBlock.dart';
import 'package:json_annotation/json_annotation.dart';


part 'EditorJSData.g.dart';

@JsonSerializable()
class EditorJSData {
  final int? time;
  final String? version;
  final List<EditorJSBlock>? blocks;

  EditorJSData({this.time, this.version, this.blocks});

 factory EditorJSData.fromJson(Map<String, dynamic> parsedJson) => _$EditorJSDataFromJson(parsedJson);
  Map<String, dynamic> toJson() => _$EditorJSDataToJson(this);
}
