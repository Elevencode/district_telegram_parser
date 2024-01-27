// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TextEntity _$TextEntityFromJson(Map<String, dynamic> json) {
  return _TextEntity.fromJson(json);
}

/// @nodoc
mixin _$TextEntity {
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextEntityCopyWith<TextEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextEntityCopyWith<$Res> {
  factory $TextEntityCopyWith(
          TextEntity value, $Res Function(TextEntity) then) =
      _$TextEntityCopyWithImpl<$Res, TextEntity>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class _$TextEntityCopyWithImpl<$Res, $Val extends TextEntity>
    implements $TextEntityCopyWith<$Res> {
  _$TextEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TextEntityImplCopyWith<$Res>
    implements $TextEntityCopyWith<$Res> {
  factory _$$TextEntityImplCopyWith(
          _$TextEntityImpl value, $Res Function(_$TextEntityImpl) then) =
      __$$TextEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$TextEntityImplCopyWithImpl<$Res>
    extends _$TextEntityCopyWithImpl<$Res, _$TextEntityImpl>
    implements _$$TextEntityImplCopyWith<$Res> {
  __$$TextEntityImplCopyWithImpl(
      _$TextEntityImpl _value, $Res Function(_$TextEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$TextEntityImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextEntityImpl extends _TextEntity {
  const _$TextEntityImpl({required this.text}) : super._();

  factory _$TextEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextEntityImplFromJson(json);

  @override
  final String text;

  @override
  String toString() {
    return 'TextEntity(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextEntityImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextEntityImplCopyWith<_$TextEntityImpl> get copyWith =>
      __$$TextEntityImplCopyWithImpl<_$TextEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TextEntityImplToJson(
      this,
    );
  }
}

abstract class _TextEntity extends TextEntity {
  const factory _TextEntity({required final String text}) = _$TextEntityImpl;
  const _TextEntity._() : super._();

  factory _TextEntity.fromJson(Map<String, dynamic> json) =
      _$TextEntityImpl.fromJson;

  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$TextEntityImplCopyWith<_$TextEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
