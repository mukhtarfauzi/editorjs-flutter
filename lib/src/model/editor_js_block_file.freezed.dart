// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editor_js_block_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EditorJSBlockFile {
  String? get url;

  /// Create a copy of EditorJSBlockFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EditorJSBlockFileCopyWith<EditorJSBlockFile> get copyWith =>
      _$EditorJSBlockFileCopyWithImpl<EditorJSBlockFile>(
          this as EditorJSBlockFile, _$identity);

  /// Serializes this EditorJSBlockFile to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditorJSBlockFile &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  @override
  String toString() {
    return 'EditorJSBlockFile(url: $url)';
  }
}

/// @nodoc
abstract mixin class $EditorJSBlockFileCopyWith<$Res> {
  factory $EditorJSBlockFileCopyWith(
          EditorJSBlockFile value, $Res Function(EditorJSBlockFile) _then) =
      _$EditorJSBlockFileCopyWithImpl;
  @useResult
  $Res call({String? url});
}

/// @nodoc
class _$EditorJSBlockFileCopyWithImpl<$Res>
    implements $EditorJSBlockFileCopyWith<$Res> {
  _$EditorJSBlockFileCopyWithImpl(this._self, this._then);

  final EditorJSBlockFile _self;
  final $Res Function(EditorJSBlockFile) _then;

  /// Create a copy of EditorJSBlockFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_self.copyWith(
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _EditorJSBlockFile implements EditorJSBlockFile {
  const _EditorJSBlockFile({this.url});
  factory _EditorJSBlockFile.fromJson(Map<String, dynamic> json) =>
      _$EditorJSBlockFileFromJson(json);

  @override
  final String? url;

  /// Create a copy of EditorJSBlockFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EditorJSBlockFileCopyWith<_EditorJSBlockFile> get copyWith =>
      __$EditorJSBlockFileCopyWithImpl<_EditorJSBlockFile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EditorJSBlockFileToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditorJSBlockFile &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  @override
  String toString() {
    return 'EditorJSBlockFile(url: $url)';
  }
}

/// @nodoc
abstract mixin class _$EditorJSBlockFileCopyWith<$Res>
    implements $EditorJSBlockFileCopyWith<$Res> {
  factory _$EditorJSBlockFileCopyWith(
          _EditorJSBlockFile value, $Res Function(_EditorJSBlockFile) _then) =
      __$EditorJSBlockFileCopyWithImpl;
  @override
  @useResult
  $Res call({String? url});
}

/// @nodoc
class __$EditorJSBlockFileCopyWithImpl<$Res>
    implements _$EditorJSBlockFileCopyWith<$Res> {
  __$EditorJSBlockFileCopyWithImpl(this._self, this._then);

  final _EditorJSBlockFile _self;
  final $Res Function(_EditorJSBlockFile) _then;

  /// Create a copy of EditorJSBlockFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_EditorJSBlockFile(
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
