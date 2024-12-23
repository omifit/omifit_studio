// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_student_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddStudentReq _$AddStudentReqFromJson(Map<String, dynamic> json) {
  return _AddStudentReq.fromJson(json);
}

/// @nodoc
mixin _$AddStudentReq {
  String? get studentId => throw _privateConstructorUsedError;
  String? get teacherId => throw _privateConstructorUsedError;
  DateTime? get assignDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddStudentReqCopyWith<AddStudentReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddStudentReqCopyWith<$Res> {
  factory $AddStudentReqCopyWith(
          AddStudentReq value, $Res Function(AddStudentReq) then) =
      _$AddStudentReqCopyWithImpl<$Res, AddStudentReq>;
  @useResult
  $Res call({String? studentId, String? teacherId, DateTime? assignDate});
}

/// @nodoc
class _$AddStudentReqCopyWithImpl<$Res, $Val extends AddStudentReq>
    implements $AddStudentReqCopyWith<$Res> {
  _$AddStudentReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = freezed,
    Object? teacherId = freezed,
    Object? assignDate = freezed,
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
      assignDate: freezed == assignDate
          ? _value.assignDate
          : assignDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddStudentReqImplCopyWith<$Res>
    implements $AddStudentReqCopyWith<$Res> {
  factory _$$AddStudentReqImplCopyWith(
          _$AddStudentReqImpl value, $Res Function(_$AddStudentReqImpl) then) =
      __$$AddStudentReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? studentId, String? teacherId, DateTime? assignDate});
}

/// @nodoc
class __$$AddStudentReqImplCopyWithImpl<$Res>
    extends _$AddStudentReqCopyWithImpl<$Res, _$AddStudentReqImpl>
    implements _$$AddStudentReqImplCopyWith<$Res> {
  __$$AddStudentReqImplCopyWithImpl(
      _$AddStudentReqImpl _value, $Res Function(_$AddStudentReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = freezed,
    Object? teacherId = freezed,
    Object? assignDate = freezed,
  }) {
    return _then(_$AddStudentReqImpl(
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String?,
      teacherId: freezed == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as String?,
      assignDate: freezed == assignDate
          ? _value.assignDate
          : assignDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddStudentReqImpl implements _AddStudentReq {
  const _$AddStudentReqImpl({this.studentId, this.teacherId, this.assignDate});

  factory _$AddStudentReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddStudentReqImplFromJson(json);

  @override
  final String? studentId;
  @override
  final String? teacherId;
  @override
  final DateTime? assignDate;

  @override
  String toString() {
    return 'AddStudentReq(studentId: $studentId, teacherId: $teacherId, assignDate: $assignDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddStudentReqImpl &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.teacherId, teacherId) ||
                other.teacherId == teacherId) &&
            (identical(other.assignDate, assignDate) ||
                other.assignDate == assignDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, studentId, teacherId, assignDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddStudentReqImplCopyWith<_$AddStudentReqImpl> get copyWith =>
      __$$AddStudentReqImplCopyWithImpl<_$AddStudentReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddStudentReqImplToJson(
      this,
    );
  }
}

abstract class _AddStudentReq implements AddStudentReq {
  const factory _AddStudentReq(
      {final String? studentId,
      final String? teacherId,
      final DateTime? assignDate}) = _$AddStudentReqImpl;

  factory _AddStudentReq.fromJson(Map<String, dynamic> json) =
      _$AddStudentReqImpl.fromJson;

  @override
  String? get studentId;
  @override
  String? get teacherId;
  @override
  DateTime? get assignDate;
  @override
  @JsonKey(ignore: true)
  _$$AddStudentReqImplCopyWith<_$AddStudentReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddStudentRes _$AddStudentResFromJson(Map<String, dynamic> json) {
  return _AddStudentRes.fromJson(json);
}

/// @nodoc
mixin _$AddStudentRes {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Body? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddStudentResCopyWith<AddStudentRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddStudentResCopyWith<$Res> {
  factory $AddStudentResCopyWith(
          AddStudentRes value, $Res Function(AddStudentRes) then) =
      _$AddStudentResCopyWithImpl<$Res, AddStudentRes>;
  @useResult
  $Res call({bool? success, String? message, Body? body});

  $BodyCopyWith<$Res>? get body;
}

/// @nodoc
class _$AddStudentResCopyWithImpl<$Res, $Val extends AddStudentRes>
    implements $AddStudentResCopyWith<$Res> {
  _$AddStudentResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? body = freezed,
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
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as Body?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BodyCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $BodyCopyWith<$Res>(_value.body!, (value) {
      return _then(_value.copyWith(body: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddStudentResImplCopyWith<$Res>
    implements $AddStudentResCopyWith<$Res> {
  factory _$$AddStudentResImplCopyWith(
          _$AddStudentResImpl value, $Res Function(_$AddStudentResImpl) then) =
      __$$AddStudentResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, Body? body});

  @override
  $BodyCopyWith<$Res>? get body;
}

/// @nodoc
class __$$AddStudentResImplCopyWithImpl<$Res>
    extends _$AddStudentResCopyWithImpl<$Res, _$AddStudentResImpl>
    implements _$$AddStudentResImplCopyWith<$Res> {
  __$$AddStudentResImplCopyWithImpl(
      _$AddStudentResImpl _value, $Res Function(_$AddStudentResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? body = freezed,
  }) {
    return _then(_$AddStudentResImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as Body?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddStudentResImpl implements _AddStudentRes {
  const _$AddStudentResImpl({this.success, this.message, this.body});

  factory _$AddStudentResImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddStudentResImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final Body? body;

  @override
  String toString() {
    return 'AddStudentRes(success: $success, message: $message, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddStudentResImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddStudentResImplCopyWith<_$AddStudentResImpl> get copyWith =>
      __$$AddStudentResImplCopyWithImpl<_$AddStudentResImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddStudentResImplToJson(
      this,
    );
  }
}

abstract class _AddStudentRes implements AddStudentRes {
  const factory _AddStudentRes(
      {final bool? success,
      final String? message,
      final Body? body}) = _$AddStudentResImpl;

  factory _AddStudentRes.fromJson(Map<String, dynamic> json) =
      _$AddStudentResImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  Body? get body;
  @override
  @JsonKey(ignore: true)
  _$$AddStudentResImplCopyWith<_$AddStudentResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Body _$BodyFromJson(Map<String, dynamic> json) {
  return _Body.fromJson(json);
}

/// @nodoc
mixin _$Body {
  String? get organization => throw _privateConstructorUsedError;
  String? get memberId => throw _privateConstructorUsedError;
  String? get employeeId => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get assignDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BodyCopyWith<Body> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyCopyWith<$Res> {
  factory $BodyCopyWith(Body value, $Res Function(Body) then) =
      _$BodyCopyWithImpl<$Res, Body>;
  @useResult
  $Res call(
      {String? organization,
      String? memberId,
      String? employeeId,
      String? id,
      String? assignDate});
}

/// @nodoc
class _$BodyCopyWithImpl<$Res, $Val extends Body>
    implements $BodyCopyWith<$Res> {
  _$BodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organization = freezed,
    Object? memberId = freezed,
    Object? employeeId = freezed,
    Object? id = freezed,
    Object? assignDate = freezed,
  }) {
    return _then(_value.copyWith(
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String?,
      memberId: freezed == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      assignDate: freezed == assignDate
          ? _value.assignDate
          : assignDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BodyImplCopyWith<$Res> implements $BodyCopyWith<$Res> {
  factory _$$BodyImplCopyWith(
          _$BodyImpl value, $Res Function(_$BodyImpl) then) =
      __$$BodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? organization,
      String? memberId,
      String? employeeId,
      String? id,
      String? assignDate});
}

/// @nodoc
class __$$BodyImplCopyWithImpl<$Res>
    extends _$BodyCopyWithImpl<$Res, _$BodyImpl>
    implements _$$BodyImplCopyWith<$Res> {
  __$$BodyImplCopyWithImpl(_$BodyImpl _value, $Res Function(_$BodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organization = freezed,
    Object? memberId = freezed,
    Object? employeeId = freezed,
    Object? id = freezed,
    Object? assignDate = freezed,
  }) {
    return _then(_$BodyImpl(
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String?,
      memberId: freezed == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      assignDate: freezed == assignDate
          ? _value.assignDate
          : assignDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BodyImpl implements _Body {
  const _$BodyImpl(
      {this.organization,
      this.memberId,
      this.employeeId,
      this.id,
      this.assignDate});

  factory _$BodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$BodyImplFromJson(json);

  @override
  final String? organization;
  @override
  final String? memberId;
  @override
  final String? employeeId;
  @override
  final String? id;
  @override
  final String? assignDate;

  @override
  String toString() {
    return 'Body(organization: $organization, memberId: $memberId, employeeId: $employeeId, id: $id, assignDate: $assignDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyImpl &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.assignDate, assignDate) ||
                other.assignDate == assignDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, organization, memberId, employeeId, id, assignDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyImplCopyWith<_$BodyImpl> get copyWith =>
      __$$BodyImplCopyWithImpl<_$BodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BodyImplToJson(
      this,
    );
  }
}

abstract class _Body implements Body {
  const factory _Body(
      {final String? organization,
      final String? memberId,
      final String? employeeId,
      final String? id,
      final String? assignDate}) = _$BodyImpl;

  factory _Body.fromJson(Map<String, dynamic> json) = _$BodyImpl.fromJson;

  @override
  String? get organization;
  @override
  String? get memberId;
  @override
  String? get employeeId;
  @override
  String? get id;
  @override
  String? get assignDate;
  @override
  @JsonKey(ignore: true)
  _$$BodyImplCopyWith<_$BodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
