import 'package:freezed_annotation/freezed_annotation.dart';

part 'editor_js_checklist_item.freezed.dart';
part 'editor_js_checklist_item.g.dart';

@freezed
sealed class EditorJSChecklistItem with _$EditorJSChecklistItem {
  const factory EditorJSChecklistItem({
    required String text,
    required bool checked,
  }) = _EditorJSChecklistItem;

  factory EditorJSChecklistItem.fromJson(Map<String, dynamic> json) =>
      _$EditorJSChecklistItemFromJson(json);
}