// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_with_district_and_departments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessageWithDistrictAndDepartments {
  Message get message => throw _privateConstructorUsedError;
  Set<String> get districts => throw _privateConstructorUsedError;
  Set<String> get departments => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageWithDistrictAndDepartmentsCopyWith<MessageWithDistrictAndDepartments>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageWithDistrictAndDepartmentsCopyWith<$Res> {
  factory $MessageWithDistrictAndDepartmentsCopyWith(
          MessageWithDistrictAndDepartments value,
          $Res Function(MessageWithDistrictAndDepartments) then) =
      _$MessageWithDistrictAndDepartmentsCopyWithImpl<$Res,
          MessageWithDistrictAndDepartments>;
  @useResult
  $Res call({Message message, Set<String> districts, Set<String> departments});

  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class _$MessageWithDistrictAndDepartmentsCopyWithImpl<$Res,
        $Val extends MessageWithDistrictAndDepartments>
    implements $MessageWithDistrictAndDepartmentsCopyWith<$Res> {
  _$MessageWithDistrictAndDepartmentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? districts = null,
    Object? departments = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
      districts: null == districts
          ? _value.districts
          : districts // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      departments: null == departments
          ? _value.departments
          : departments // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res> get message {
    return $MessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessageWithDistrictAndDepartmentsImplCopyWith<$Res>
    implements $MessageWithDistrictAndDepartmentsCopyWith<$Res> {
  factory _$$MessageWithDistrictAndDepartmentsImplCopyWith(
          _$MessageWithDistrictAndDepartmentsImpl value,
          $Res Function(_$MessageWithDistrictAndDepartmentsImpl) then) =
      __$$MessageWithDistrictAndDepartmentsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Message message, Set<String> districts, Set<String> departments});

  @override
  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$MessageWithDistrictAndDepartmentsImplCopyWithImpl<$Res>
    extends _$MessageWithDistrictAndDepartmentsCopyWithImpl<$Res,
        _$MessageWithDistrictAndDepartmentsImpl>
    implements _$$MessageWithDistrictAndDepartmentsImplCopyWith<$Res> {
  __$$MessageWithDistrictAndDepartmentsImplCopyWithImpl(
      _$MessageWithDistrictAndDepartmentsImpl _value,
      $Res Function(_$MessageWithDistrictAndDepartmentsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? districts = null,
    Object? departments = null,
  }) {
    return _then(_$MessageWithDistrictAndDepartmentsImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
      districts: null == districts
          ? _value._districts
          : districts // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      departments: null == departments
          ? _value._departments
          : departments // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc

class _$MessageWithDistrictAndDepartmentsImpl
    extends _MessageWithDistrictAndDepartments {
  const _$MessageWithDistrictAndDepartmentsImpl(
      {required this.message,
      final Set<String> districts = const {},
      final Set<String> departments = const {}})
      : _districts = districts,
        _departments = departments,
        super._();

  @override
  final Message message;
  final Set<String> _districts;
  @override
  @JsonKey()
  Set<String> get districts {
    if (_districts is EqualUnmodifiableSetView) return _districts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_districts);
  }

  final Set<String> _departments;
  @override
  @JsonKey()
  Set<String> get departments {
    if (_departments is EqualUnmodifiableSetView) return _departments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_departments);
  }

  @override
  String toString() {
    return 'MessageWithDistrictAndDepartments(message: $message, districts: $districts, departments: $departments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageWithDistrictAndDepartmentsImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._districts, _districts) &&
            const DeepCollectionEquality()
                .equals(other._departments, _departments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      message,
      const DeepCollectionEquality().hash(_districts),
      const DeepCollectionEquality().hash(_departments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageWithDistrictAndDepartmentsImplCopyWith<
          _$MessageWithDistrictAndDepartmentsImpl>
      get copyWith => __$$MessageWithDistrictAndDepartmentsImplCopyWithImpl<
          _$MessageWithDistrictAndDepartmentsImpl>(this, _$identity);
}

abstract class _MessageWithDistrictAndDepartments
    extends MessageWithDistrictAndDepartments {
  const factory _MessageWithDistrictAndDepartments(
      {required final Message message,
      final Set<String> districts,
      final Set<String> departments}) = _$MessageWithDistrictAndDepartmentsImpl;
  const _MessageWithDistrictAndDepartments._() : super._();

  @override
  Message get message;
  @override
  Set<String> get districts;
  @override
  Set<String> get departments;
  @override
  @JsonKey(ignore: true)
  _$$MessageWithDistrictAndDepartmentsImplCopyWith<
          _$MessageWithDistrictAndDepartmentsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
