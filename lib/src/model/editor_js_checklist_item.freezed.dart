// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editor_js_checklist_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EditorJSChecklistItem {
  String get text;
  bool get checked;

  /// Create a copy of EditorJSChecklistItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EditorJSChecklistItemCopyWith<EditorJSChecklistItem> get copyWith =>
      _$EditorJSChecklistItemCopyWithImpl<EditorJSChecklistItem>(
          this as EditorJSChecklistItem, _$identity);

  /// Serializes this EditorJSChecklistItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditorJSChecklistItem &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.checked, checked) || other.checked == checked));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, checked);

  @override
  String toString() {
    return 'EditorJSChecklistItem(text: $text, checked: $checked)';
  }
}

/// @nodoc
abstract mixin class $EditorJSChecklistItemCopyWith<$Res> {
  factory $EditorJSChecklistItemCopyWith(EditorJSChecklistItem value,
          $Res Function(EditorJSChecklistItem) _then) =
      _$EditorJSChecklistItemCopyWithImpl;
  @useResult
  $Res call({String text, bool checked});
}

/// @nodoc
class _$EditorJSChecklistItemCopyWithImpl<$Res>
    implements $EditorJSChecklistItemCopyWith<$Res> {
  _$EditorJSChecklistItemCopyWithImpl(this._self, this._then);

  final EditorJSChecklistItem _self;
  final $Res Function(EditorJSChecklistItem) _then;

  /// Create a copy of EditorJSChecklistItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? checked = null,
  }) {
    return _then(_self.copyWith(
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      checked: null == checked
          ? _self.checked
          : checked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _EditorJSChecklistItem implements EditorJSChecklistItem {
  const _EditorJSChecklistItem({required this.text, required this.checked});
  factory _EditorJSChecklistItem.fromJson(Map<String, dynamic> json) =>
      _$EditorJSChecklistItemFromJson(json);

  @override
  final String text;
  @override
  final bool checked;

  /// Create a copy of EditorJSChecklistItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EditorJSChecklistItemCopyWith<_EditorJSChecklistItem> get copyWith =>
      __$EditorJSChecklistItemCopyWithImpl<_EditorJSChecklistItem>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EditorJSChecklistItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditorJSChecklistItem &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.checked, checked) || other.checked == checked));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, checked);

  @override
  String toString() {
    return 'EditorJSChecklistItem(text: $text, checked: $checked)';
  }
}

/// @nodoc
abstract mixin class _$EditorJSChecklistItemCopyWith<$Res>
    implements $EditorJSChecklistItemCopyWith<$Res> {
  factory _$EditorJSChecklistItemCopyWith(_EditorJSChecklistItem value,
          $Res Function(_EditorJSChecklistItem) _then) =
      __$EditorJSChecklistItemCopyWithImpl;
  @override
  @useResult
  $Res call({String text, bool checked});
}

/// @nodoc
class __$EditorJSChecklistItemCopyWithImpl<$Res>
    implements _$EditorJSChecklistItemCopyWith<$Res> {
  __$EditorJSChecklistItemCopyWithImpl(this._self, this._then);

  final _EditorJSChecklistItem _self;
  final $Res Function(_EditorJSChecklistItem) _then;

  /// Create a copy of EditorJSChecklistItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? text = null,
    Object? checked = null,
  }) {
    return _then(_EditorJSChecklistItem(
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      checked: null == checked
          ? _self.checked
          : checked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
