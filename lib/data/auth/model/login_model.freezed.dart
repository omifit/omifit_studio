// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginReq _$LoginReqFromJson(Map<String, dynamic> json) {
  return _LoginReq.fromJson(json);
}

/// @nodoc
mixin _$LoginReq {
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get otp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginReqCopyWith<LoginReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginReqCopyWith<$Res> {
  factory $LoginReqCopyWith(LoginReq value, $Res Function(LoginReq) then) =
      _$LoginReqCopyWithImpl<$Res, LoginReq>;
  @useResult
  $Res call({String? phoneNumber, String? otp});
}

/// @nodoc
class _$LoginReqCopyWithImpl<$Res, $Val extends LoginReq>
    implements $LoginReqCopyWith<$Res> {
  _$LoginReqCopyWithImpl(this._value, this._then);

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
abstract class _$$LoginReqImplCopyWith<$Res>
    implements $LoginReqCopyWith<$Res> {
  factory _$$LoginReqImplCopyWith(
          _$LoginReqImpl value, $Res Function(_$LoginReqImpl) then) =
      __$$LoginReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? phoneNumber, String? otp});
}

/// @nodoc
class __$$LoginReqImplCopyWithImpl<$Res>
    extends _$LoginReqCopyWithImpl<$Res, _$LoginReqImpl>
    implements _$$LoginReqImplCopyWith<$Res> {
  __$$LoginReqImplCopyWithImpl(
      _$LoginReqImpl _value, $Res Function(_$LoginReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? otp = freezed,
  }) {
    return _then(_$LoginReqImpl(
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
class _$LoginReqImpl implements _LoginReq {
  const _$LoginReqImpl({this.phoneNumber, this.otp});

  factory _$LoginReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginReqImplFromJson(json);

  @override
  final String? phoneNumber;
  @override
  final String? otp;

  @override
  String toString() {
    return 'LoginReq(phoneNumber: $phoneNumber, otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginReqImpl &&
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
  _$$LoginReqImplCopyWith<_$LoginReqImpl> get copyWith =>
      __$$LoginReqImplCopyWithImpl<_$LoginReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginReqImplToJson(
      this,
    );
  }
}

abstract class _LoginReq implements LoginReq {
  const factory _LoginReq({final String? phoneNumber, final String? otp}) =
      _$LoginReqImpl;

  factory _LoginReq.fromJson(Map<String, dynamic> json) =
      _$LoginReqImpl.fromJson;

  @override
  String? get phoneNumber;
  @override
  String? get otp;
  @override
  @JsonKey(ignore: true)
  _$$LoginReqImplCopyWith<_$LoginReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginRes _$LoginResFromJson(Map<String, dynamic> json) {
  return _LoginRes.fromJson(json);
}

/// @nodoc
mixin _$LoginRes {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Body? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResCopyWith<LoginRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResCopyWith<$Res> {
  factory $LoginResCopyWith(LoginRes value, $Res Function(LoginRes) then) =
      _$LoginResCopyWithImpl<$Res, LoginRes>;
  @useResult
  $Res call({bool? success, String? message, Body? body});

  $BodyCopyWith<$Res>? get body;
}

/// @nodoc
class _$LoginResCopyWithImpl<$Res, $Val extends LoginRes>
    implements $LoginResCopyWith<$Res> {
  _$LoginResCopyWithImpl(this._value, this._then);

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
abstract class _$$LoginResImplCopyWith<$Res>
    implements $LoginResCopyWith<$Res> {
  factory _$$LoginResImplCopyWith(
          _$LoginResImpl value, $Res Function(_$LoginResImpl) then) =
      __$$LoginResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, Body? body});

  @override
  $BodyCopyWith<$Res>? get body;
}

/// @nodoc
class __$$LoginResImplCopyWithImpl<$Res>
    extends _$LoginResCopyWithImpl<$Res, _$LoginResImpl>
    implements _$$LoginResImplCopyWith<$Res> {
  __$$LoginResImplCopyWithImpl(
      _$LoginResImpl _value, $Res Function(_$LoginResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? body = freezed,
  }) {
    return _then(_$LoginResImpl(
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
class _$LoginResImpl implements _LoginRes {
  const _$LoginResImpl({this.success, this.message, this.body});

  factory _$LoginResImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final Body? body;

  @override
  String toString() {
    return 'LoginRes(success: $success, message: $message, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResImpl &&
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
  _$$LoginResImplCopyWith<_$LoginResImpl> get copyWith =>
      __$$LoginResImplCopyWithImpl<_$LoginResImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResImplToJson(
      this,
    );
  }
}

abstract class _LoginRes implements LoginRes {
  const factory _LoginRes(
      {final bool? success,
      final String? message,
      final Body? body}) = _$LoginResImpl;

  factory _LoginRes.fromJson(Map<String, dynamic> json) =
      _$LoginResImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  Body? get body;
  @override
  @JsonKey(ignore: true)
  _$$LoginResImplCopyWith<_$LoginResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Body _$BodyFromJson(Map<String, dynamic> json) {
  return _Body.fromJson(json);
}

/// @nodoc
mixin _$Body {
  String? get token => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BodyCopyWith<Body> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyCopyWith<$Res> {
  factory $BodyCopyWith(Body value, $Res Function(Body) then) =
      _$BodyCopyWithImpl<$Res, Body>;
  @useResult
  $Res call({String? token, User? user});

  $UserCopyWith<$Res>? get user;
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
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BodyImplCopyWith<$Res> implements $BodyCopyWith<$Res> {
  factory _$$BodyImplCopyWith(
          _$BodyImpl value, $Res Function(_$BodyImpl) then) =
      __$$BodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? token, User? user});

  @override
  $UserCopyWith<$Res>? get user;
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
    Object? user = freezed,
  }) {
    return _then(_$BodyImpl(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BodyImpl implements _Body {
  const _$BodyImpl({this.token, this.user});

  factory _$BodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$BodyImplFromJson(json);

  @override
  final String? token;
  @override
  final User? user;

  @override
  String toString() {
    return 'Body(token: $token, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, user);

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
  const factory _Body({final String? token, final User? user}) = _$BodyImpl;

  factory _Body.fromJson(Map<String, dynamic> json) = _$BodyImpl.fromJson;

  @override
  String? get token;
  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$BodyImplCopyWith<_$BodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  Location? get location => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get dateOfBirth => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get profession => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get profileImage => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {Location? location,
      @JsonKey(name: "_id") String? id,
      String? name,
      String? phoneNumber,
      String? dateOfBirth,
      String? gender,
      String? profession,
      String? address,
      String? profileImage,
      String? createdAt,
      String? updatedAt});

  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? profession = freezed,
    Object? address = freezed,
    Object? profileImage = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      profession: freezed == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Location? location,
      @JsonKey(name: "_id") String? id,
      String? name,
      String? phoneNumber,
      String? dateOfBirth,
      String? gender,
      String? profession,
      String? address,
      String? profileImage,
      String? createdAt,
      String? updatedAt});

  @override
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? profession = freezed,
    Object? address = freezed,
    Object? profileImage = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$UserImpl(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      profession: freezed == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {this.location,
      @JsonKey(name: "_id") this.id,
      this.name,
      this.phoneNumber,
      this.dateOfBirth,
      this.gender,
      this.profession,
      this.address,
      this.profileImage,
      this.createdAt,
      this.updatedAt});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final Location? location;
  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String? name;
  @override
  final String? phoneNumber;
  @override
  final String? dateOfBirth;
  @override
  final String? gender;
  @override
  final String? profession;
  @override
  final String? address;
  @override
  final String? profileImage;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'User(location: $location, id: $id, name: $name, phoneNumber: $phoneNumber, dateOfBirth: $dateOfBirth, gender: $gender, profession: $profession, address: $address, profileImage: $profileImage, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.profession, profession) ||
                other.profession == profession) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      location,
      id,
      name,
      phoneNumber,
      dateOfBirth,
      gender,
      profession,
      address,
      profileImage,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {final Location? location,
      @JsonKey(name: "_id") final String? id,
      final String? name,
      final String? phoneNumber,
      final String? dateOfBirth,
      final String? gender,
      final String? profession,
      final String? address,
      final String? profileImage,
      final String? createdAt,
      final String? updatedAt}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  Location? get location;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get name;
  @override
  String? get phoneNumber;
  @override
  String? get dateOfBirth;
  @override
  String? get gender;
  @override
  String? get profession;
  @override
  String? get address;
  @override
  String? get profileImage;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  String? get type => throw _privateConstructorUsedError;
  List<double>? get coordinates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call({String? type, List<double>? coordinates});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationImplCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
          _$LocationImpl value, $Res Function(_$LocationImpl) then) =
      __$$LocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type, List<double>? coordinates});
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
      _$LocationImpl _value, $Res Function(_$LocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_$LocationImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationImpl implements _Location {
  const _$LocationImpl({this.type, final List<double>? coordinates})
      : _coordinates = coordinates;

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

  @override
  final String? type;
  final List<double>? _coordinates;
  @override
  List<double>? get coordinates {
    final value = _coordinates;
    if (value == null) return null;
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Location(type: $type, coordinates: $coordinates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_coordinates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {final String? type, final List<double>? coordinates}) = _$LocationImpl;

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  @override
  String? get type;
  @override
  List<double>? get coordinates;
  @override
  @JsonKey(ignore: true)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
