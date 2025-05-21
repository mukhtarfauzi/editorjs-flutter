// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editor_js_block.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EditorJSBlock {
  String? get type;
  EditorJSBlockData? get data;

  /// Create a copy of EditorJSBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EditorJSBlockCopyWith<EditorJSBlock> get copyWith =>
      _$EditorJSBlockCopyWithImpl<EditorJSBlock>(
          this as EditorJSBlock, _$identity);

  /// Serializes this EditorJSBlock to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditorJSBlock &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, data);

  @override
  String toString() {
    return 'EditorJSBlock(type: $type, data: $data)';
  }
}

/// @nodoc
abstract mixin class $EditorJSBlockCopyWith<$Res> {
  factory $EditorJSBlockCopyWith(
          EditorJSBlock value, $Res Function(EditorJSBlock) _then) =
      _$EditorJSBlockCopyWithImpl;
  @useResult
  $Res call({String? type, EditorJSBlockData? data});

  $EditorJSBlockDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$EditorJSBlockCopyWithImpl<$Res>
    implements $EditorJSBlockCopyWith<$Res> {
  _$EditorJSBlockCopyWithImpl(this._self, this._then);

  final EditorJSBlock _self;
  final $Res Function(EditorJSBlock) _then;

  /// Create a copy of EditorJSBlock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? data = freezed,
  }) {
    return _then(_self.copyWith(
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as EditorJSBlockData?,
    ));
  }

  /// Create a copy of EditorJSBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EditorJSBlockDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $EditorJSBlockDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _EditorJSBlock implements EditorJSBlock {
  const _EditorJSBlock({this.type, this.data});
  factory _EditorJSBlock.fromJson(Map<String, dynamic> json) =>
      _$EditorJSBlockFromJson(json);

  @override
  final String? type;
  @override
  final EditorJSBlockData? data;

  /// Create a copy of EditorJSBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EditorJSBlockCopyWith<_EditorJSBlock> get copyWith =>
      __$EditorJSBlockCopyWithImpl<_EditorJSBlock>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EditorJSBlockToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditorJSBlock &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, data);

  @override
  String toString() {
    return 'EditorJSBlock(type: $type, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$EditorJSBlockCopyWith<$Res>
    implements $EditorJSBlockCopyWith<$Res> {
  factory _$EditorJSBlockCopyWith(
          _EditorJSBlock value, $Res Function(_EditorJSBlock) _then) =
      __$EditorJSBlockCopyWithImpl;
  @override
  @useResult
  $Res call({String? type, EditorJSBlockData? data});

  @override
  $EditorJSBlockDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$EditorJSBlockCopyWithImpl<$Res>
    implements _$EditorJSBlockCopyWith<$Res> {
  __$EditorJSBlockCopyWithImpl(this._self, this._then);

  final _EditorJSBlock _self;
  final $Res Function(_EditorJSBlock) _then;

  /// Create a copy of EditorJSBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = freezed,
    Object? data = freezed,
  }) {
    return _then(_EditorJSBlock(
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as EditorJSBlockData?,
    ));
  }

  /// Create a copy of EditorJSBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EditorJSBlockDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $EditorJSBlockDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

// dart format on
