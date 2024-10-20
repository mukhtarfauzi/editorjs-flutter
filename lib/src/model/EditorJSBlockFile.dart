import 'package:json_annotation/json_annotation.dart';

part 'EditorJSBlockFile.g.dart';

@JsonSerializable()
class EditorJSBlockFile {
  final String? url;

  EditorJSBlockFile({this.url});

  factory EditorJSBlockFile.fromJson(Map<String, dynamic> parsedJson) => _$EditorJSBlockFileFromJson(parsedJson);
  Map<String, dynamic> toJson() => _$EditorJSBlockFileToJson(this);
}
