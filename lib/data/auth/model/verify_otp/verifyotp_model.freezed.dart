// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verifyotp_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyOtpReq _$VerifyOtpReqFromJson(Map<String, dynamic> json) {
  return _VerifyOtpReq.fromJson(json);
}

/// @nodoc
mixin _$VerifyOtpReq {
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get otp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyOtpReqCopyWith<VerifyOtpReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyOtpReqCopyWith<$Res> {
  factory $VerifyOtpReqCopyWith(
          VerifyOtpReq value, $Res Function(VerifyOtpReq) then) =
      _$VerifyOtpReqCopyWithImpl<$Res, VerifyOtpReq>;
  @useResult
  $Res call({String? phoneNumber, String? otp});
}

/// @nodoc
class _$VerifyOtpReqCopyWithImpl<$Res, $Val extends VerifyOtpReq>
    implements $VerifyOtpReqCopyWith<$Res> {
  _$VerifyOtpReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? otp = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyOtpReqImplCopyWith<$Res>
    implements $VerifyOtpReqCopyWith<$Res> {
  factory _$$VerifyOtpReqImplCopyWith(
          _$VerifyOtpReqImpl value, $Res Function(_$VerifyOtpReqImpl) then) =
      __$$VerifyOtpReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? phoneNumber, String? otp});
}

/// @nodoc
class __$$VerifyOtpReqImplCopyWithImpl<$Res>
    extends _$VerifyOtpReqCopyWithImpl<$Res, _$VerifyOtpReqImpl>
    implements _$$VerifyOtpReqImplCopyWith<$Res> {
  __$$VerifyOtpReqImplCopyWithImpl(
      _$VerifyOtpReqImpl _value, $Res Function(_$VerifyOtpReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? otp = freezed,
  }) {
    return _then(_$VerifyOtpReqImpl(
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyOtpReqImpl implements _VerifyOtpReq {
  const _$VerifyOtpReqImpl({this.phoneNumber, this.otp});

  factory _$VerifyOtpReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyOtpReqImplFromJson(json);

  @override
  final String? phoneNumber;
  @override
  final String? otp;

  @override
  String toString() {
    return 'VerifyOtpReq(phoneNumber: $phoneNumber, otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpReqImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpReqImplCopyWith<_$VerifyOtpReqImpl> get copyWith =>
      __$$VerifyOtpReqImplCopyWithImpl<_$VerifyOtpReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyOtpReqImplToJson(
      this,
    );
  }
}

abstract class _VerifyOtpReq implements VerifyOtpReq {
  const factory _VerifyOtpReq({final String? phoneNumber, final String? otp}) =
      _$VerifyOtpReqImpl;

  factory _VerifyOtpReq.fromJson(Map<String, dynamic> json) =
      _$VerifyOtpReqImpl.fromJson;

  @override
  String? get phoneNumber;
  @override
  String? get otp;
  @override
  @JsonKey(ignore: true)
  _$$VerifyOtpReqImplCopyWith<_$VerifyOtpReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VerifyOtpRes _$VerifyOtpResFromJson(Map<String, dynamic> json) {
  return _VerifyOtpRes.fromJson(json);
}

/// @nodoc
mixin _$VerifyOtpRes {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Body? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyOtpResCopyWith<VerifyOtpRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyOtpResCopyWith<$Res> {
  factory $VerifyOtpResCopyWith(
          VerifyOtpRes value, $Res Function(VerifyOtpRes) then) =
      _$VerifyOtpResCopyWithImpl<$Res, VerifyOtpRes>;
  @useResult
  $Res call({bool? success, String? message, Body? body});

  $BodyCopyWith<$Res>? get body;
}

/// @nodoc
class _$VerifyOtpResCopyWithImpl<$Res, $Val extends VerifyOtpRes>
    implements $VerifyOtpResCopyWith<$Res> {
  _$VerifyOtpResCopyWithImpl(this._value, this._then);

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
abstract class _$$VerifyOtpResImplCopyWith<$Res>
    implements $VerifyOtpResCopyWith<$Res> {
  factory _$$VerifyOtpResImplCopyWith(
          _$VerifyOtpResImpl value, $Res Function(_$VerifyOtpResImpl) then) =
      __$$VerifyOtpResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, Body? body});

  @override
  $BodyCopyWith<$Res>? get body;
}

/// @nodoc
class __$$VerifyOtpResImplCopyWithImpl<$Res>
    extends _$VerifyOtpResCopyWithImpl<$Res, _$VerifyOtpResImpl>
    implements _$$VerifyOtpResImplCopyWith<$Res> {
  __$$VerifyOtpResImplCopyWithImpl(
      _$VerifyOtpResImpl _value, $Res Function(_$VerifyOtpResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? body = freezed,
  }) {
    return _then(_$VerifyOtpResImpl(
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
class _$VerifyOtpResImpl implements _VerifyOtpRes {
  const _$VerifyOtpResImpl({this.success, this.message, this.body});

  factory _$VerifyOtpResImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyOtpResImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final Body? body;

  @override
  String toString() {
    return 'VerifyOtpRes(success: $success, message: $message, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpResImpl &&
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
  _$$VerifyOtpResImplCopyWith<_$VerifyOtpResImpl> get copyWith =>
      __$$VerifyOtpResImplCopyWithImpl<_$VerifyOtpResImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyOtpResImplToJson(
      this,
    );
  }
}

abstract class _VerifyOtpRes implements VerifyOtpRes {
  const factory _VerifyOtpRes(
      {final bool? success,
      final String? message,
      final Body? body}) = _$VerifyOtpResImpl;

  factory _VerifyOtpRes.fromJson(Map<String, dynamic> json) =
      _$VerifyOtpResImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  Body? get body;
  @override
  @JsonKey(ignore: true)
  _$$VerifyOtpResImplCopyWith<_$VerifyOtpResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Body _$BodyFromJson(Map<String, dynamic> json) {
  return _Body.fromJson(json);
}

/// @nodoc
mixin _$Body {
  String? get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BodyCopyWith<Body> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyCopyWith<$Res> {
  factory $BodyCopyWith(Body value, $Res Function(Body) then) =
      _$BodyCopyWithImpl<$Res, Body>;
  @useResult
  $Res call({String? phoneNumber});
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
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
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
  $Res call({String? phoneNumber});
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
    Object? phoneNumber = freezed,
  }) {
    return _then(_$BodyImpl(
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BodyImpl implements _Body {
  const _$BodyImpl({this.phoneNumber});

  factory _$BodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$BodyImplFromJson(json);

  @override
  final String? phoneNumber;

  @override
  String toString() {
    return 'Body(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

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
  const factory _Body({final String? phoneNumber}) = _$BodyImpl;

  factory _Body.fromJson(Map<String, dynamic> json) = _$BodyImpl.fromJson;

  @override
  String? get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$BodyImplCopyWith<_$BodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
