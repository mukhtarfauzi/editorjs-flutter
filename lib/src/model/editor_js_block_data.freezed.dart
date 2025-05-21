// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editor_js_block_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EditorJSBlockData {
  String? get text;
  String? get html;
  int? get level;
  String? get style;
  List<String>? get items;
  EditorJSBlockFile? get file;
  String? get caption;
  bool? get withBorder;
  bool? get stretched;
  bool? get withBackground;

  /// Create a copy of EditorJSBlockData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EditorJSBlockDataCopyWith<EditorJSBlockData> get copyWith =>
      _$EditorJSBlockDataCopyWithImpl<EditorJSBlockData>(
          this as EditorJSBlockData, _$identity);

  /// Serializes this EditorJSBlockData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditorJSBlockData &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.html, html) || other.html == html) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.style, style) || other.style == style) &&
            const DeepCollectionEquality().equals(other.items, items) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.withBorder, withBorder) ||
                other.withBorder == withBorder) &&
            (identical(other.stretched, stretched) ||
                other.stretched == stretched) &&
            (identical(other.withBackground, withBackground) ||
                other.withBackground == withBackground));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      text,
      html,
      level,
      style,
      const DeepCollectionEquality().hash(items),
      file,
      caption,
      withBorder,
      stretched,
      withBackground);

  @override
  String toString() {
    return 'EditorJSBlockData(text: $text, html: $html, level: $level, style: $style, items: $items, file: $file, caption: $caption, withBorder: $withBorder, stretched: $stretched, withBackground: $withBackground)';
  }
}

/// @nodoc
abstract mixin class $EditorJSBlockDataCopyWith<$Res> {
  factory $EditorJSBlockDataCopyWith(
          EditorJSBlockData value, $Res Function(EditorJSBlockData) _then) =
      _$EditorJSBlockDataCopyWithImpl;
  @useResult
  $Res call(
      {String? text,
      String? html,
      int? level,
      String? style,
      List<String>? items,
      EditorJSBlockFile? file,
      String? caption,
      bool? withBorder,
      bool? stretched,
      bool? withBackground});

  $EditorJSBlockFileCopyWith<$Res>? get file;
}

/// @nodoc
class _$EditorJSBlockDataCopyWithImpl<$Res>
    implements $EditorJSBlockDataCopyWith<$Res> {
  _$EditorJSBlockDataCopyWithImpl(this._self, this._then);

  final EditorJSBlockData _self;
  final $Res Function(EditorJSBlockData) _then;

  /// Create a copy of EditorJSBlockData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? html = freezed,
    Object? level = freezed,
    Object? style = freezed,
    Object? items = freezed,
    Object? file = freezed,
    Object? caption = freezed,
    Object? withBorder = freezed,
    Object? stretched = freezed,
    Object? withBackground = freezed,
  }) {
    return _then(_self.copyWith(
      text: freezed == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      html: freezed == html
          ? _self.html
          : html // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      style: freezed == style
          ? _self.style
          : style // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      file: freezed == file
          ? _self.file
          : file // ignore: cast_nullable_to_non_nullable
              as EditorJSBlockFile?,
      caption: freezed == caption
          ? _self.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      withBorder: freezed == withBorder
          ? _self.withBorder
          : withBorder // ignore: cast_nullable_to_non_nullable
              as bool?,
      stretched: freezed == stretched
          ? _self.stretched
          : stretched // ignore: cast_nullable_to_non_nullable
              as bool?,
      withBackground: freezed == withBackground
          ? _self.withBackground
          : withBackground // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of EditorJSBlockData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EditorJSBlockFileCopyWith<$Res>? get file {
    if (_self.file == null) {
      return null;
    }

    return $EditorJSBlockFileCopyWith<$Res>(_self.file!, (value) {
      return _then(_self.copyWith(file: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _EditorJSBlockData implements EditorJSBlockData {
  const _EditorJSBlockData(
      {this.text,
      this.html,
      this.level,
      this.style,
      final List<String>? items,
      this.file,
      this.caption,
      this.withBorder,
      this.stretched,
      this.withBackground})
      : _items = items;
  factory _EditorJSBlockData.fromJson(Map<String, dynamic> json) =>
      _$EditorJSBlockDataFromJson(json);

  @override
  final String? text;
  @override
  final String? html;
  @override
  final int? level;
  @override
  final String? style;
  final List<String>? _items;
  @override
  List<String>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final EditorJSBlockFile? file;
  @override
  final String? caption;
  @override
  final bool? withBorder;
  @override
  final bool? stretched;
  @override
  final bool? withBackground;

  /// Create a copy of EditorJSBlockData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EditorJSBlockDataCopyWith<_EditorJSBlockData> get copyWith =>
      __$EditorJSBlockDataCopyWithImpl<_EditorJSBlockData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EditorJSBlockDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditorJSBlockData &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.html, html) || other.html == html) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.style, style) || other.style == style) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.withBorder, withBorder) ||
                other.withBorder == withBorder) &&
            (identical(other.stretched, stretched) ||
                other.stretched == stretched) &&
            (identical(other.withBackground, withBackground) ||
                other.withBackground == withBackground));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      text,
      html,
      level,
      style,
      const DeepCollectionEquality().hash(_items),
      file,
      caption,
      withBorder,
      stretched,
      withBackground);

  @override
  String toString() {
    return 'EditorJSBlockData(text: $text, html: $html, level: $level, style: $style, items: $items, file: $file, caption: $caption, withBorder: $withBorder, stretched: $stretched, withBackground: $withBackground)';
  }
}

/// @nodoc
abstract mixin class _$EditorJSBlockDataCopyWith<$Res>
    implements $EditorJSBlockDataCopyWith<$Res> {
  factory _$EditorJSBlockDataCopyWith(
          _EditorJSBlockData value, $Res Function(_EditorJSBlockData) _then) =
      __$EditorJSBlockDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? text,
      String? html,
      int? level,
      String? style,
      List<String>? items,
      EditorJSBlockFile? file,
      String? caption,
      bool? withBorder,
      bool? stretched,
      bool? withBackground});

  @override
  $EditorJSBlockFileCopyWith<$Res>? get file;
}

/// @nodoc
class __$EditorJSBlockDataCopyWithImpl<$Res>
    implements _$EditorJSBlockDataCopyWith<$Res> {
  __$EditorJSBlockDataCopyWithImpl(this._self, this._then);

  final _EditorJSBlockData _self;
  final $Res Function(_EditorJSBlockData) _then;

  /// Create a copy of EditorJSBlockData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? text = freezed,
    Object? html = freezed,
    Object? level = freezed,
    Object? style = freezed,
    Object? items = freezed,
    Object? file = freezed,
    Object? caption = freezed,
    Object? withBorder = freezed,
    Object? stretched = freezed,
    Object? withBackground = freezed,
  }) {
    return _then(_EditorJSBlockData(
      text: freezed == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      html: freezed == html
          ? _self.html
          : html // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      style: freezed == style
          ? _self.style
          : style // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      file: freezed == file
          ? _self.file
          : file // ignore: cast_nullable_to_non_nullable
              as EditorJSBlockFile?,
      caption: freezed == caption
          ? _self.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      withBorder: freezed == withBorder
          ? _self.withBorder
          : withBorder // ignore: cast_nullable_to_non_nullable
              as bool?,
      stretched: freezed == stretched
          ? _self.stretched
          : stretched // ignore: cast_nullable_to_non_nullable
              as bool?,
      withBackground: freezed == withBackground
          ? _self.withBackground
          : withBackground // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of EditorJSBlockData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EditorJSBlockFileCopyWith<$Res>? get file {
    if (_self.file == null) {
      return null;
    }

    return $EditorJSBlockFileCopyWith<$Res>(_self.file!, (value) {
      return _then(_self.copyWith(file: value));
    });
  }
}

// dart format on
