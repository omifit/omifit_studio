// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sendotp_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendOtpReq _$SendOtpReqFromJson(Map<String, dynamic> json) {
  return _SendOtpReq.fromJson(json);
}

/// @nodoc
mixin _$SendOtpReq {
  String? get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendOtpReqCopyWith<SendOtpReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendOtpReqCopyWith<$Res> {
  factory $SendOtpReqCopyWith(
          SendOtpReq value, $Res Function(SendOtpReq) then) =
      _$SendOtpReqCopyWithImpl<$Res, SendOtpReq>;
  @useResult
  $Res call({String? phoneNumber});
}

/// @nodoc
class _$SendOtpReqCopyWithImpl<$Res, $Val extends SendOtpReq>
    implements $SendOtpReqCopyWith<$Res> {
  _$SendOtpReqCopyWithImpl(this._value, this._then);

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
abstract class _$$SendOtpReqImplCopyWith<$Res>
    implements $SendOtpReqCopyWith<$Res> {
  factory _$$SendOtpReqImplCopyWith(
          _$SendOtpReqImpl value, $Res Function(_$SendOtpReqImpl) then) =
      __$$SendOtpReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? phoneNumber});
}

/// @nodoc
class __$$SendOtpReqImplCopyWithImpl<$Res>
    extends _$SendOtpReqCopyWithImpl<$Res, _$SendOtpReqImpl>
    implements _$$SendOtpReqImplCopyWith<$Res> {
  __$$SendOtpReqImplCopyWithImpl(
      _$SendOtpReqImpl _value, $Res Function(_$SendOtpReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(_$SendOtpReqImpl(
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendOtpReqImpl implements _SendOtpReq {
  const _$SendOtpReqImpl({this.phoneNumber});

  factory _$SendOtpReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendOtpReqImplFromJson(json);

  @override
  final String? phoneNumber;

  @override
  String toString() {
    return 'SendOtpReq(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOtpReqImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOtpReqImplCopyWith<_$SendOtpReqImpl> get copyWith =>
      __$$SendOtpReqImplCopyWithImpl<_$SendOtpReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendOtpReqImplToJson(
      this,
    );
  }
}

abstract class _SendOtpReq implements SendOtpReq {
  const factory _SendOtpReq({final String? phoneNumber}) = _$SendOtpReqImpl;

  factory _SendOtpReq.fromJson(Map<String, dynamic> json) =
      _$SendOtpReqImpl.fromJson;

  @override
  String? get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$SendOtpReqImplCopyWith<_$SendOtpReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SendOtpRes _$SendOtpResFromJson(Map<String, dynamic> json) {
  return _SendOtpRes.fromJson(json);
}

/// @nodoc
mixin _$SendOtpRes {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Body? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendOtpResCopyWith<SendOtpRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendOtpResCopyWith<$Res> {
  factory $SendOtpResCopyWith(
          SendOtpRes value, $Res Function(SendOtpRes) then) =
      _$SendOtpResCopyWithImpl<$Res, SendOtpRes>;
  @useResult
  $Res call({bool? success, String? message, Body? body});

  $BodyCopyWith<$Res>? get body;
}

/// @nodoc
class _$SendOtpResCopyWithImpl<$Res, $Val extends SendOtpRes>
    implements $SendOtpResCopyWith<$Res> {
  _$SendOtpResCopyWithImpl(this._value, this._then);

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
abstract class _$$SendOtpResImplCopyWith<$Res>
    implements $SendOtpResCopyWith<$Res> {
  factory _$$SendOtpResImplCopyWith(
          _$SendOtpResImpl value, $Res Function(_$SendOtpResImpl) then) =
      __$$SendOtpResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, Body? body});

  @override
  $BodyCopyWith<$Res>? get body;
}

/// @nodoc
class __$$SendOtpResImplCopyWithImpl<$Res>
    extends _$SendOtpResCopyWithImpl<$Res, _$SendOtpResImpl>
    implements _$$SendOtpResImplCopyWith<$Res> {
  __$$SendOtpResImplCopyWithImpl(
      _$SendOtpResImpl _value, $Res Function(_$SendOtpResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? body = freezed,
  }) {
    return _then(_$SendOtpResImpl(
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
class _$SendOtpResImpl implements _SendOtpRes {
  const _$SendOtpResImpl({this.success, this.message, this.body});

  factory _$SendOtpResImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendOtpResImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final Body? body;

  @override
  String toString() {
    return 'SendOtpRes(success: $success, message: $message, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOtpResImpl &&
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
  _$$SendOtpResImplCopyWith<_$SendOtpResImpl> get copyWith =>
      __$$SendOtpResImplCopyWithImpl<_$SendOtpResImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendOtpResImplToJson(
      this,
    );
  }
}

abstract class _SendOtpRes implements SendOtpRes {
  const factory _SendOtpRes(
      {final bool? success,
      final String? message,
      final Body? body}) = _$SendOtpResImpl;

  factory _SendOtpRes.fromJson(Map<String, dynamic> json) =
      _$SendOtpResImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  Body? get body;
  @override
  @JsonKey(ignore: true)
  _$$SendOtpResImplCopyWith<_$SendOtpResImpl> get copyWith =>
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
