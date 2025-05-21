import 'package:freezed_annotation/freezed_annotation.dart';

part 'editor_js_css_tag.freezed.dart';
part 'editor_js_css_tag.g.dart';

@freezed
sealed class EditorJSCSSTag with _$EditorJSCSSTag {
  const factory EditorJSCSSTag({
    @JsonKey(includeToJson: false, includeIfNull: false) String? tag,
    @JsonKey(includeIfNull: false) String? backgroundColor,
    @JsonKey(includeIfNull: false) String? color,
    @JsonKey(includeIfNull: false) double? padding,
  }) = _EditorJSCSSTag;

  factory EditorJSCSSTag.fromJson(Map<String, dynamic> json) =>
      _$EditorJSCSSTagFromJson(json);
}
