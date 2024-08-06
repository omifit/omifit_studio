// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selectorg_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SelectorgReq _$SelectorgReqFromJson(Map<String, dynamic> json) {
  return _SelectorgReq.fromJson(json);
}

/// @nodoc
mixin _$SelectorgReq {
  String? get organizationId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectorgReqCopyWith<SelectorgReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectorgReqCopyWith<$Res> {
  factory $SelectorgReqCopyWith(
          SelectorgReq value, $Res Function(SelectorgReq) then) =
      _$SelectorgReqCopyWithImpl<$Res, SelectorgReq>;
  @useResult
  $Res call({String? organizationId});
}

/// @nodoc
class _$SelectorgReqCopyWithImpl<$Res, $Val extends SelectorgReq>
    implements $SelectorgReqCopyWith<$Res> {
  _$SelectorgReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organizationId = freezed,
  }) {
    return _then(_value.copyWith(
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectorgReqImplCopyWith<$Res>
    implements $SelectorgReqCopyWith<$Res> {
  factory _$$SelectorgReqImplCopyWith(
          _$SelectorgReqImpl value, $Res Function(_$SelectorgReqImpl) then) =
      __$$SelectorgReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? organizationId});
}

/// @nodoc
class __$$SelectorgReqImplCopyWithImpl<$Res>
    extends _$SelectorgReqCopyWithImpl<$Res, _$SelectorgReqImpl>
    implements _$$SelectorgReqImplCopyWith<$Res> {
  __$$SelectorgReqImplCopyWithImpl(
      _$SelectorgReqImpl _value, $Res Function(_$SelectorgReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organizationId = freezed,
  }) {
    return _then(_$SelectorgReqImpl(
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectorgReqImpl implements _SelectorgReq {
  const _$SelectorgReqImpl({this.organizationId});

  factory _$SelectorgReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectorgReqImplFromJson(json);

  @override
  final String? organizationId;

  @override
  String toString() {
    return 'SelectorgReq(organizationId: $organizationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectorgReqImpl &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, organizationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectorgReqImplCopyWith<_$SelectorgReqImpl> get copyWith =>
      __$$SelectorgReqImplCopyWithImpl<_$SelectorgReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectorgReqImplToJson(
      this,
    );
  }
}

abstract class _SelectorgReq implements SelectorgReq {
  const factory _SelectorgReq({final String? organizationId}) =
      _$SelectorgReqImpl;

  factory _SelectorgReq.fromJson(Map<String, dynamic> json) =
      _$SelectorgReqImpl.fromJson;

  @override
  String? get organizationId;
  @override
  @JsonKey(ignore: true)
  _$$SelectorgReqImplCopyWith<_$SelectorgReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SelectorgRes _$SelectorgResFromJson(Map<String, dynamic> json) {
  return _SelectorgRes.fromJson(json);
}

/// @nodoc
mixin _$SelectorgRes {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Body? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectorgResCopyWith<SelectorgRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectorgResCopyWith<$Res> {
  factory $SelectorgResCopyWith(
          SelectorgRes value, $Res Function(SelectorgRes) then) =
      _$SelectorgResCopyWithImpl<$Res, SelectorgRes>;
  @useResult
  $Res call({bool? success, String? message, Body? body});

  $BodyCopyWith<$Res>? get body;
}

/// @nodoc
class _$SelectorgResCopyWithImpl<$Res, $Val extends SelectorgRes>
    implements $SelectorgResCopyWith<$Res> {
  _$SelectorgResCopyWithImpl(this._value, this._then);

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
abstract class _$$SelectorgResImplCopyWith<$Res>
    implements $SelectorgResCopyWith<$Res> {
  factory _$$SelectorgResImplCopyWith(
          _$SelectorgResImpl value, $Res Function(_$SelectorgResImpl) then) =
      __$$SelectorgResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, Body? body});

  @override
  $BodyCopyWith<$Res>? get body;
}

/// @nodoc
class __$$SelectorgResImplCopyWithImpl<$Res>
    extends _$SelectorgResCopyWithImpl<$Res, _$SelectorgResImpl>
    implements _$$SelectorgResImplCopyWith<$Res> {
  __$$SelectorgResImplCopyWithImpl(
      _$SelectorgResImpl _value, $Res Function(_$SelectorgResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? body = freezed,
  }) {
    return _then(_$SelectorgResImpl(
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
class _$SelectorgResImpl implements _SelectorgRes {
  const _$SelectorgResImpl({this.success, this.message, this.body});

  factory _$SelectorgResImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectorgResImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final Body? body;

  @override
  String toString() {
    return 'SelectorgRes(success: $success, message: $message, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectorgResImpl &&
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
  _$$SelectorgResImplCopyWith<_$SelectorgResImpl> get copyWith =>
      __$$SelectorgResImplCopyWithImpl<_$SelectorgResImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectorgResImplToJson(
      this,
    );
  }
}

abstract class _SelectorgRes implements SelectorgRes {
  const factory _SelectorgRes(
      {final bool? success,
      final String? message,
      final Body? body}) = _$SelectorgResImpl;

  factory _SelectorgRes.fromJson(Map<String, dynamic> json) =
      _$SelectorgResImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  Body? get body;
  @override
  @JsonKey(ignore: true)
  _$$SelectorgResImplCopyWith<_$SelectorgResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Body _$BodyFromJson(Map<String, dynamic> json) {
  return _Body.fromJson(json);
}

/// @nodoc
mixin _$Body {
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BodyCopyWith<Body> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyCopyWith<$Res> {
  factory $BodyCopyWith(Body value, $Res Function(Body) then) =
      _$BodyCopyWithImpl<$Res, Body>;
  @useResult
  $Res call({String? token});
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
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
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
  $Res call({String? token});
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
    Object? token = freezed,
  }) {
    return _then(_$BodyImpl(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BodyImpl implements _Body {
  const _$BodyImpl({this.token});

  factory _$BodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$BodyImplFromJson(json);

  @override
  final String? token;

  @override
  String toString() {
    return 'Body(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

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
  const factory _Body({final String? token}) = _$BodyImpl;

  factory _Body.fromJson(Map<String, dynamic> json) = _$BodyImpl.fromJson;

  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$BodyImplCopyWith<_$BodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
