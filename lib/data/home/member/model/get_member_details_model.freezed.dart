// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_member_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MemberDetailsRes _$MemberDetailsResFromJson(Map<String, dynamic> json) {
  return _MemberDetailsRes.fromJson(json);
}

/// @nodoc
mixin _$MemberDetailsRes {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Body? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberDetailsResCopyWith<MemberDetailsRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberDetailsResCopyWith<$Res> {
  factory $MemberDetailsResCopyWith(
          MemberDetailsRes value, $Res Function(MemberDetailsRes) then) =
      _$MemberDetailsResCopyWithImpl<$Res, MemberDetailsRes>;
  @useResult
  $Res call({bool? success, String? message, Body? body});

  $BodyCopyWith<$Res>? get body;
}

/// @nodoc
class _$MemberDetailsResCopyWithImpl<$Res, $Val extends MemberDetailsRes>
    implements $MemberDetailsResCopyWith<$Res> {
  _$MemberDetailsResCopyWithImpl(this._value, this._then);

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
abstract class _$$MemberDetailsResImplCopyWith<$Res>
    implements $MemberDetailsResCopyWith<$Res> {
  factory _$$MemberDetailsResImplCopyWith(_$MemberDetailsResImpl value,
          $Res Function(_$MemberDetailsResImpl) then) =
      __$$MemberDetailsResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, Body? body});

  @override
  $BodyCopyWith<$Res>? get body;
}

/// @nodoc
class __$$MemberDetailsResImplCopyWithImpl<$Res>
    extends _$MemberDetailsResCopyWithImpl<$Res, _$MemberDetailsResImpl>
    implements _$$MemberDetailsResImplCopyWith<$Res> {
  __$$MemberDetailsResImplCopyWithImpl(_$MemberDetailsResImpl _value,
      $Res Function(_$MemberDetailsResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? body = freezed,
  }) {
    return _then(_$MemberDetailsResImpl(
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
class _$MemberDetailsResImpl implements _MemberDetailsRes {
  const _$MemberDetailsResImpl({this.success, this.message, this.body});

  factory _$MemberDetailsResImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberDetailsResImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final Body? body;

  @override
  String toString() {
    return 'MemberDetailsRes(success: $success, message: $message, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberDetailsResImpl &&
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
  _$$MemberDetailsResImplCopyWith<_$MemberDetailsResImpl> get copyWith =>
      __$$MemberDetailsResImplCopyWithImpl<_$MemberDetailsResImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberDetailsResImplToJson(
      this,
    );
  }
}

abstract class _MemberDetailsRes implements MemberDetailsRes {
  const factory _MemberDetailsRes(
      {final bool? success,
      final String? message,
      final Body? body}) = _$MemberDetailsResImpl;

  factory _MemberDetailsRes.fromJson(Map<String, dynamic> json) =
      _$MemberDetailsResImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  Body? get body;
  @override
  @JsonKey(ignore: true)
  _$$MemberDetailsResImplCopyWith<_$MemberDetailsResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Body _$BodyFromJson(Map<String, dynamic> json) {
  return _Body.fromJson(json);
}

/// @nodoc
mixin _$Body {
  OrganizationMember? get organizationMember =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BodyCopyWith<Body> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyCopyWith<$Res> {
  factory $BodyCopyWith(Body value, $Res Function(Body) then) =
      _$BodyCopyWithImpl<$Res, Body>;
  @useResult
  $Res call({OrganizationMember? organizationMember});

  $OrganizationMemberCopyWith<$Res>? get organizationMember;
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
    Object? organizationMember = freezed,
  }) {
    return _then(_value.copyWith(
      organizationMember: freezed == organizationMember
          ? _value.organizationMember
          : organizationMember // ignore: cast_nullable_to_non_nullable
              as OrganizationMember?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrganizationMemberCopyWith<$Res>? get organizationMember {
    if (_value.organizationMember == null) {
      return null;
    }

    return $OrganizationMemberCopyWith<$Res>(_value.organizationMember!,
        (value) {
      return _then(_value.copyWith(organizationMember: value) as $Val);
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
  $Res call({OrganizationMember? organizationMember});

  @override
  $OrganizationMemberCopyWith<$Res>? get organizationMember;
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
    Object? organizationMember = freezed,
  }) {
    return _then(_$BodyImpl(
      organizationMember: freezed == organizationMember
          ? _value.organizationMember
          : organizationMember // ignore: cast_nullable_to_non_nullable
              as OrganizationMember?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BodyImpl implements _Body {
  const _$BodyImpl({this.organizationMember});

  factory _$BodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$BodyImplFromJson(json);

  @override
  final OrganizationMember? organizationMember;

  @override
  String toString() {
    return 'Body(organizationMember: $organizationMember)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyImpl &&
            (identical(other.organizationMember, organizationMember) ||
                other.organizationMember == organizationMember));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, organizationMember);

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
  const factory _Body({final OrganizationMember? organizationMember}) =
      _$BodyImpl;

  factory _Body.fromJson(Map<String, dynamic> json) = _$BodyImpl.fromJson;

  @override
  OrganizationMember? get organizationMember;
  @override
  @JsonKey(ignore: true)
  _$$BodyImplCopyWith<_$BodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrganizationMember _$OrganizationMemberFromJson(Map<String, dynamic> json) {
  return _OrganizationMember.fromJson(json);
}

/// @nodoc
mixin _$OrganizationMember {
  String? get id => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  String? get organization => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  dynamic get coach => throw _privateConstructorUsedError;
  String? get joiningDate => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrganizationMemberCopyWith<OrganizationMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationMemberCopyWith<$Res> {
  factory $OrganizationMemberCopyWith(
          OrganizationMember value, $Res Function(OrganizationMember) then) =
      _$OrganizationMemberCopyWithImpl<$Res, OrganizationMember>;
  @useResult
  $Res call(
      {String? id,
      User? user,
      String? organization,
      String? status,
      dynamic coach,
      String? joiningDate,
      String? createdAt,
      String? updatedAt});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$OrganizationMemberCopyWithImpl<$Res, $Val extends OrganizationMember>
    implements $OrganizationMemberCopyWith<$Res> {
  _$OrganizationMemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? organization = freezed,
    Object? status = freezed,
    Object? coach = freezed,
    Object? joiningDate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      coach: freezed == coach
          ? _value.coach
          : coach // ignore: cast_nullable_to_non_nullable
              as dynamic,
      joiningDate: freezed == joiningDate
          ? _value.joiningDate
          : joiningDate // ignore: cast_nullable_to_non_nullable
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
abstract class _$$OrganizationMemberImplCopyWith<$Res>
    implements $OrganizationMemberCopyWith<$Res> {
  factory _$$OrganizationMemberImplCopyWith(_$OrganizationMemberImpl value,
          $Res Function(_$OrganizationMemberImpl) then) =
      __$$OrganizationMemberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      User? user,
      String? organization,
      String? status,
      dynamic coach,
      String? joiningDate,
      String? createdAt,
      String? updatedAt});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$OrganizationMemberImplCopyWithImpl<$Res>
    extends _$OrganizationMemberCopyWithImpl<$Res, _$OrganizationMemberImpl>
    implements _$$OrganizationMemberImplCopyWith<$Res> {
  __$$OrganizationMemberImplCopyWithImpl(_$OrganizationMemberImpl _value,
      $Res Function(_$OrganizationMemberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? organization = freezed,
    Object? status = freezed,
    Object? coach = freezed,
    Object? joiningDate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$OrganizationMemberImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      coach: freezed == coach
          ? _value.coach
          : coach // ignore: cast_nullable_to_non_nullable
              as dynamic,
      joiningDate: freezed == joiningDate
          ? _value.joiningDate
          : joiningDate // ignore: cast_nullable_to_non_nullable
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
class _$OrganizationMemberImpl implements _OrganizationMember {
  const _$OrganizationMemberImpl(
      {this.id,
      this.user,
      this.organization,
      this.status,
      this.coach,
      this.joiningDate,
      this.createdAt,
      this.updatedAt});

  factory _$OrganizationMemberImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrganizationMemberImplFromJson(json);

  @override
  final String? id;
  @override
  final User? user;
  @override
  final String? organization;
  @override
  final String? status;
  @override
  final dynamic coach;
  @override
  final String? joiningDate;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'OrganizationMember(id: $id, user: $user, organization: $organization, status: $status, coach: $coach, joiningDate: $joiningDate, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganizationMemberImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.coach, coach) &&
            (identical(other.joiningDate, joiningDate) ||
                other.joiningDate == joiningDate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      user,
      organization,
      status,
      const DeepCollectionEquality().hash(coach),
      joiningDate,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrganizationMemberImplCopyWith<_$OrganizationMemberImpl> get copyWith =>
      __$$OrganizationMemberImplCopyWithImpl<_$OrganizationMemberImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrganizationMemberImplToJson(
      this,
    );
  }
}

abstract class _OrganizationMember implements OrganizationMember {
  const factory _OrganizationMember(
      {final String? id,
      final User? user,
      final String? organization,
      final String? status,
      final dynamic coach,
      final String? joiningDate,
      final String? createdAt,
      final String? updatedAt}) = _$OrganizationMemberImpl;

  factory _OrganizationMember.fromJson(Map<String, dynamic> json) =
      _$OrganizationMemberImpl.fromJson;

  @override
  String? get id;
  @override
  User? get user;
  @override
  String? get organization;
  @override
  String? get status;
  @override
  dynamic get coach;
  @override
  String? get joiningDate;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$OrganizationMemberImplCopyWith<_$OrganizationMemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  Location? get location => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get dateOfBirth => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get profession => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get profileImage => throw _privateConstructorUsedError;
  bool? get isVerified => throw _privateConstructorUsedError;
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
      String? id,
      String? name,
      String? phoneNumber,
      String? dateOfBirth,
      String? gender,
      String? profession,
      String? address,
      String? profileImage,
      bool? isVerified,
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
    Object? isVerified = freezed,
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
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      String? id,
      String? name,
      String? phoneNumber,
      String? dateOfBirth,
      String? gender,
      String? profession,
      String? address,
      String? profileImage,
      bool? isVerified,
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
    Object? isVerified = freezed,
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
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      this.id,
      this.name,
      this.phoneNumber,
      this.dateOfBirth,
      this.gender,
      this.profession,
      this.address,
      this.profileImage,
      this.isVerified,
      this.createdAt,
      this.updatedAt});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final Location? location;
  @override
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
  final bool? isVerified;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'User(location: $location, id: $id, name: $name, phoneNumber: $phoneNumber, dateOfBirth: $dateOfBirth, gender: $gender, profession: $profession, address: $address, profileImage: $profileImage, isVerified: $isVerified, createdAt: $createdAt, updatedAt: $updatedAt)';
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
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
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
      isVerified,
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
      final String? id,
      final String? name,
      final String? phoneNumber,
      final String? dateOfBirth,
      final String? gender,
      final String? profession,
      final String? address,
      final String? profileImage,
      final bool? isVerified,
      final String? createdAt,
      final String? updatedAt}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  Location? get location;
  @override
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
  bool? get isVerified;
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
