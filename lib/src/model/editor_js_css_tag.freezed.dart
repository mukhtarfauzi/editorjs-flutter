// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editor_js_css_tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EditorJSCSSTag {
  @JsonKey(includeToJson: false, includeIfNull: false)
  String? get tag;
  @JsonKey(includeIfNull: false)
  String? get backgroundColor;
  @JsonKey(includeIfNull: false)
  String? get color;
  @JsonKey(includeIfNull: false)
  double? get padding;

  /// Create a copy of EditorJSCSSTag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EditorJSCSSTagCopyWith<EditorJSCSSTag> get copyWith =>
      _$EditorJSCSSTagCopyWithImpl<EditorJSCSSTag>(
          this as EditorJSCSSTag, _$identity);

  /// Serializes this EditorJSCSSTag to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditorJSCSSTag &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.padding, padding) || other.padding == padding));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, tag, backgroundColor, color, padding);

  @override
  String toString() {
    return 'EditorJSCSSTag(tag: $tag, backgroundColor: $backgroundColor, color: $color, padding: $padding)';
  }
}

/// @nodoc
abstract mixin class $EditorJSCSSTagCopyWith<$Res> {
  factory $EditorJSCSSTagCopyWith(
          EditorJSCSSTag value, $Res Function(EditorJSCSSTag) _then) =
      _$EditorJSCSSTagCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeIfNull: false) String? tag,
      @JsonKey(includeIfNull: false) String? backgroundColor,
      @JsonKey(includeIfNull: false) String? color,
      @JsonKey(includeIfNull: false) double? padding});
}

/// @nodoc
class _$EditorJSCSSTagCopyWithImpl<$Res>
    implements $EditorJSCSSTagCopyWith<$Res> {
  _$EditorJSCSSTagCopyWithImpl(this._self, this._then);

  final EditorJSCSSTag _self;
  final $Res Function(EditorJSCSSTag) _then;

  /// Create a copy of EditorJSCSSTag
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = freezed,
    Object? backgroundColor = freezed,
    Object? color = freezed,
    Object? padding = freezed,
  }) {
    return _then(_self.copyWith(
      tag: freezed == tag
          ? _self.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      padding: freezed == padding
          ? _self.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _EditorJSCSSTag implements EditorJSCSSTag {
  const _EditorJSCSSTag(
      {@JsonKey(includeToJson: false, includeIfNull: false) this.tag,
      @JsonKey(includeIfNull: false) this.backgroundColor,
      @JsonKey(includeIfNull: false) this.color,
      @JsonKey(includeIfNull: false) this.padding});
  factory _EditorJSCSSTag.fromJson(Map<String, dynamic> json) =>
      _$EditorJSCSSTagFromJson(json);

  @override
  @JsonKey(includeToJson: false, includeIfNull: false)
  final String? tag;
  @override
  @JsonKey(includeIfNull: false)
  final String? backgroundColor;
  @override
  @JsonKey(includeIfNull: false)
  final String? color;
  @override
  @JsonKey(includeIfNull: false)
  final double? padding;

  /// Create a copy of EditorJSCSSTag
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EditorJSCSSTagCopyWith<_EditorJSCSSTag> get copyWith =>
      __$EditorJSCSSTagCopyWithImpl<_EditorJSCSSTag>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EditorJSCSSTagToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditorJSCSSTag &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.padding, padding) || other.padding == padding));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, tag, backgroundColor, color, padding);

  @override
  String toString() {
    return 'EditorJSCSSTag(tag: $tag, backgroundColor: $backgroundColor, color: $color, padding: $padding)';
  }
}

/// @nodoc
abstract mixin class _$EditorJSCSSTagCopyWith<$Res>
    implements $EditorJSCSSTagCopyWith<$Res> {
  factory _$EditorJSCSSTagCopyWith(
          _EditorJSCSSTag value, $Res Function(_EditorJSCSSTag) _then) =
      __$EditorJSCSSTagCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeIfNull: false) String? tag,
      @JsonKey(includeIfNull: false) String? backgroundColor,
      @JsonKey(includeIfNull: false) String? color,
      @JsonKey(includeIfNull: false) double? padding});
}

/// @nodoc
class __$EditorJSCSSTagCopyWithImpl<$Res>
    implements _$EditorJSCSSTagCopyWith<$Res> {
  __$EditorJSCSSTagCopyWithImpl(this._self, this._then);

  final _EditorJSCSSTag _self;
  final $Res Function(_EditorJSCSSTag) _then;

  /// Create a copy of EditorJSCSSTag
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? tag = freezed,
    Object? backgroundColor = freezed,
    Object? color = freezed,
    Object? padding = freezed,
  }) {
    return _then(_EditorJSCSSTag(
      tag: freezed == tag
          ? _self.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      padding: freezed == padding
          ? _self.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

// dart format on
