// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remove_student_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RemoveStudentReq _$RemoveStudentReqFromJson(Map<String, dynamic> json) {
  return _RemoveStudentReq.fromJson(json);
}

/// @nodoc
mixin _$RemoveStudentReq {
  String? get studentId => throw _privateConstructorUsedError;
  String? get teacherId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemoveStudentReqCopyWith<RemoveStudentReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveStudentReqCopyWith<$Res> {
  factory $RemoveStudentReqCopyWith(
          RemoveStudentReq value, $Res Function(RemoveStudentReq) then) =
      _$RemoveStudentReqCopyWithImpl<$Res, RemoveStudentReq>;
  @useResult
  $Res call({String? studentId, String? teacherId});
}

/// @nodoc
class _$RemoveStudentReqCopyWithImpl<$Res, $Val extends RemoveStudentReq>
    implements $RemoveStudentReqCopyWith<$Res> {
  _$RemoveStudentReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = freezed,
    Object? teacherId = freezed,
  }) {
    return _then(_value.copyWith(
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String?,
      teacherId: freezed == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemoveStudentReqImplCopyWith<$Res>
    implements $RemoveStudentReqCopyWith<$Res> {
  factory _$$RemoveStudentReqImplCopyWith(_$RemoveStudentReqImpl value,
          $Res Function(_$RemoveStudentReqImpl) then) =
      __$$RemoveStudentReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? studentId, String? teacherId});
}

/// @nodoc
class __$$RemoveStudentReqImplCopyWithImpl<$Res>
    extends _$RemoveStudentReqCopyWithImpl<$Res, _$RemoveStudentReqImpl>
    implements _$$RemoveStudentReqImplCopyWith<$Res> {
  __$$RemoveStudentReqImplCopyWithImpl(_$RemoveStudentReqImpl _value,
      $Res Function(_$RemoveStudentReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = freezed,
    Object? teacherId = freezed,
  }) {
    return _then(_$RemoveStudentReqImpl(
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String?,
      teacherId: freezed == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemoveStudentReqImpl implements _RemoveStudentReq {
  const _$RemoveStudentReqImpl({this.studentId, this.teacherId});

  factory _$RemoveStudentReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemoveStudentReqImplFromJson(json);

  @override
  final String? studentId;
  @override
  final String? teacherId;

  @override
  String toString() {
    return 'RemoveStudentReq(studentId: $studentId, teacherId: $teacherId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveStudentReqImpl &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.teacherId, teacherId) ||
                other.teacherId == teacherId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, studentId, teacherId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveStudentReqImplCopyWith<_$RemoveStudentReqImpl> get copyWith =>
      __$$RemoveStudentReqImplCopyWithImpl<_$RemoveStudentReqImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemoveStudentReqImplToJson(
      this,
    );
  }
}

abstract class _RemoveStudentReq implements RemoveStudentReq {
  const factory _RemoveStudentReq(
      {final String? studentId,
      final String? teacherId}) = _$RemoveStudentReqImpl;

  factory _RemoveStudentReq.fromJson(Map<String, dynamic> json) =
      _$RemoveStudentReqImpl.fromJson;

  @override
  String? get studentId;
  @override
  String? get teacherId;
  @override
  @JsonKey(ignore: true)
  _$$RemoveStudentReqImplCopyWith<_$RemoveStudentReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RemoveStudentRes _$RemoveStudentResFromJson(Map<String, dynamic> json) {
  return _RemoveStudentRes.fromJson(json);
}

/// @nodoc
mixin _$RemoveStudentRes {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemoveStudentResCopyWith<RemoveStudentRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveStudentResCopyWith<$Res> {
  factory $RemoveStudentResCopyWith(
          RemoveStudentRes value, $Res Function(RemoveStudentRes) then) =
      _$RemoveStudentResCopyWithImpl<$Res, RemoveStudentRes>;
  @useResult
  $Res call({bool? success, String? message});
}

/// @nodoc
class _$RemoveStudentResCopyWithImpl<$Res, $Val extends RemoveStudentRes>
    implements $RemoveStudentResCopyWith<$Res> {
  _$RemoveStudentResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemoveStudentResImplCopyWith<$Res>
    implements $RemoveStudentResCopyWith<$Res> {
  factory _$$RemoveStudentResImplCopyWith(_$RemoveStudentResImpl value,
          $Res Function(_$RemoveStudentResImpl) then) =
      __$$RemoveStudentResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message});
}

/// @nodoc
class __$$RemoveStudentResImplCopyWithImpl<$Res>
    extends _$RemoveStudentResCopyWithImpl<$Res, _$RemoveStudentResImpl>
    implements _$$RemoveStudentResImplCopyWith<$Res> {
  __$$RemoveStudentResImplCopyWithImpl(_$RemoveStudentResImpl _value,
      $Res Function(_$RemoveStudentResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
  }) {
    return _then(_$RemoveStudentResImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemoveStudentResImpl implements _RemoveStudentRes {
  const _$RemoveStudentResImpl({this.success, this.message});

  factory _$RemoveStudentResImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemoveStudentResImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;

  @override
  String toString() {
    return 'RemoveStudentRes(success: $success, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveStudentResImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveStudentResImplCopyWith<_$RemoveStudentResImpl> get copyWith =>
      __$$RemoveStudentResImplCopyWithImpl<_$RemoveStudentResImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemoveStudentResImplToJson(
      this,
    );
  }
}

abstract class _RemoveStudentRes implements RemoveStudentRes {
  const factory _RemoveStudentRes(
      {final bool? success, final String? message}) = _$RemoveStudentResImpl;

  factory _RemoveStudentRes.fromJson(Map<String, dynamic> json) =
      _$RemoveStudentResImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$RemoveStudentResImplCopyWith<_$RemoveStudentResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
