// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editor_js_view_styles.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EditorJSViewStyles {
  List<EditorJSCSSTag>? get cssTags;
  String? get defaultFont;

  /// Create a copy of EditorJSViewStyles
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EditorJSViewStylesCopyWith<EditorJSViewStyles> get copyWith =>
      _$EditorJSViewStylesCopyWithImpl<EditorJSViewStyles>(
          this as EditorJSViewStyles, _$identity);

  /// Serializes this EditorJSViewStyles to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditorJSViewStyles &&
            const DeepCollectionEquality().equals(other.cssTags, cssTags) &&
            (identical(other.defaultFont, defaultFont) ||
                other.defaultFont == defaultFont));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(cssTags), defaultFont);

  @override
  String toString() {
    return 'EditorJSViewStyles(cssTags: $cssTags, defaultFont: $defaultFont)';
  }
}

/// @nodoc
abstract mixin class $EditorJSViewStylesCopyWith<$Res> {
  factory $EditorJSViewStylesCopyWith(
          EditorJSViewStyles value, $Res Function(EditorJSViewStyles) _then) =
      _$EditorJSViewStylesCopyWithImpl;
  @useResult
  $Res call({List<EditorJSCSSTag>? cssTags, String? defaultFont});
}

/// @nodoc
class _$EditorJSViewStylesCopyWithImpl<$Res>
    implements $EditorJSViewStylesCopyWith<$Res> {
  _$EditorJSViewStylesCopyWithImpl(this._self, this._then);

  final EditorJSViewStyles _self;
  final $Res Function(EditorJSViewStyles) _then;

  /// Create a copy of EditorJSViewStyles
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cssTags = freezed,
    Object? defaultFont = freezed,
  }) {
    return _then(_self.copyWith(
      cssTags: freezed == cssTags
          ? _self.cssTags
          : cssTags // ignore: cast_nullable_to_non_nullable
              as List<EditorJSCSSTag>?,
      defaultFont: freezed == defaultFont
          ? _self.defaultFont
          : defaultFont // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _EditorJSViewStyles implements EditorJSViewStyles {
  const _EditorJSViewStyles(
      {final List<EditorJSCSSTag>? cssTags, this.defaultFont})
      : _cssTags = cssTags;
  factory _EditorJSViewStyles.fromJson(Map<String, dynamic> json) =>
      _$EditorJSViewStylesFromJson(json);

  final List<EditorJSCSSTag>? _cssTags;
  @override
  List<EditorJSCSSTag>? get cssTags {
    final value = _cssTags;
    if (value == null) return null;
    if (_cssTags is EqualUnmodifiableListView) return _cssTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? defaultFont;

  /// Create a copy of EditorJSViewStyles
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EditorJSViewStylesCopyWith<_EditorJSViewStyles> get copyWith =>
      __$EditorJSViewStylesCopyWithImpl<_EditorJSViewStyles>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EditorJSViewStylesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditorJSViewStyles &&
            const DeepCollectionEquality().equals(other._cssTags, _cssTags) &&
            (identical(other.defaultFont, defaultFont) ||
                other.defaultFont == defaultFont));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_cssTags), defaultFont);

  @override
  String toString() {
    return 'EditorJSViewStyles(cssTags: $cssTags, defaultFont: $defaultFont)';
  }
}

/// @nodoc
abstract mixin class _$EditorJSViewStylesCopyWith<$Res>
    implements $EditorJSViewStylesCopyWith<$Res> {
  factory _$EditorJSViewStylesCopyWith(
          _EditorJSViewStyles value, $Res Function(_EditorJSViewStyles) _then) =
      __$EditorJSViewStylesCopyWithImpl;
  @override
  @useResult
  $Res call({List<EditorJSCSSTag>? cssTags, String? defaultFont});
}

/// @nodoc
class __$EditorJSViewStylesCopyWithImpl<$Res>
    implements _$EditorJSViewStylesCopyWith<$Res> {
  __$EditorJSViewStylesCopyWithImpl(this._self, this._then);

  final _EditorJSViewStyles _self;
  final $Res Function(_EditorJSViewStyles) _then;

  /// Create a copy of EditorJSViewStyles
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? cssTags = freezed,
    Object? defaultFont = freezed,
  }) {
    return _then(_EditorJSViewStyles(
      cssTags: freezed == cssTags
          ? _self._cssTags
          : cssTags // ignore: cast_nullable_to_non_nullable
              as List<EditorJSCSSTag>?,
      defaultFont: freezed == defaultFont
          ? _self.defaultFont
          : defaultFont // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
