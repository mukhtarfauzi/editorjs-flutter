// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editor_js_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EditorJSData {
  int? get time;
  String? get version;
  List<EditorJSBlock>? get blocks;

  /// Create a copy of EditorJSData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EditorJSDataCopyWith<EditorJSData> get copyWith =>
      _$EditorJSDataCopyWithImpl<EditorJSData>(
          this as EditorJSData, _$identity);

  /// Serializes this EditorJSData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditorJSData &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.version, version) || other.version == version) &&
            const DeepCollectionEquality().equals(other.blocks, blocks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, time, version, const DeepCollectionEquality().hash(blocks));

  @override
  String toString() {
    return 'EditorJSData(time: $time, version: $version, blocks: $blocks)';
  }
}

/// @nodoc
abstract mixin class $EditorJSDataCopyWith<$Res> {
  factory $EditorJSDataCopyWith(
          EditorJSData value, $Res Function(EditorJSData) _then) =
      _$EditorJSDataCopyWithImpl;
  @useResult
  $Res call({int? time, String? version, List<EditorJSBlock>? blocks});
}

/// @nodoc
class _$EditorJSDataCopyWithImpl<$Res> implements $EditorJSDataCopyWith<$Res> {
  _$EditorJSDataCopyWithImpl(this._self, this._then);

  final EditorJSData _self;
  final $Res Function(EditorJSData) _then;

  /// Create a copy of EditorJSData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? version = freezed,
    Object? blocks = freezed,
  }) {
    return _then(_self.copyWith(
      time: freezed == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
      version: freezed == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      blocks: freezed == blocks
          ? _self.blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<EditorJSBlock>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _EditorJSData implements EditorJSData {
  const _EditorJSData(
      {this.time, this.version, final List<EditorJSBlock>? blocks})
      : _blocks = blocks;
  factory _EditorJSData.fromJson(Map<String, dynamic> json) =>
      _$EditorJSDataFromJson(json);

  @override
  final int? time;
  @override
  final String? version;
  final List<EditorJSBlock>? _blocks;
  @override
  List<EditorJSBlock>? get blocks {
    final value = _blocks;
    if (value == null) return null;
    if (_blocks is EqualUnmodifiableListView) return _blocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of EditorJSData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EditorJSDataCopyWith<_EditorJSData> get copyWith =>
      __$EditorJSDataCopyWithImpl<_EditorJSData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EditorJSDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditorJSData &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.version, version) || other.version == version) &&
            const DeepCollectionEquality().equals(other._blocks, _blocks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, time, version, const DeepCollectionEquality().hash(_blocks));

  @override
  String toString() {
    return 'EditorJSData(time: $time, version: $version, blocks: $blocks)';
  }
}

/// @nodoc
abstract mixin class _$EditorJSDataCopyWith<$Res>
    implements $EditorJSDataCopyWith<$Res> {
  factory _$EditorJSDataCopyWith(
          _EditorJSData value, $Res Function(_EditorJSData) _then) =
      __$EditorJSDataCopyWithImpl;
  @override
  @useResult
  $Res call({int? time, String? version, List<EditorJSBlock>? blocks});
}

/// @nodoc
class __$EditorJSDataCopyWithImpl<$Res>
    implements _$EditorJSDataCopyWith<$Res> {
  __$EditorJSDataCopyWithImpl(this._self, this._then);

  final _EditorJSData _self;
  final $Res Function(_EditorJSData) _then;

  /// Create a copy of EditorJSData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? time = freezed,
    Object? version = freezed,
    Object? blocks = freezed,
  }) {
    return _then(_EditorJSData(
      time: freezed == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
      version: freezed == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      blocks: freezed == blocks
          ? _self._blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<EditorJSBlock>?,
    ));
  }
}

// dart format on
