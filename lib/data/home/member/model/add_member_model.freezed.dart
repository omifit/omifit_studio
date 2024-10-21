// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_member_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddMemberReq _$AddMemberReqFromJson(Map<String, dynamic> json) {
  return _AddMemberReq.fromJson(json);
}

/// @nodoc
mixin _$AddMemberReq {
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get dateOfBirth => throw _privateConstructorUsedError;
  String? get profession => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get profileImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddMemberReqCopyWith<AddMemberReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddMemberReqCopyWith<$Res> {
  factory $AddMemberReqCopyWith(
          AddMemberReq value, $Res Function(AddMemberReq) then) =
      _$AddMemberReqCopyWithImpl<$Res, AddMemberReq>;
  @useResult
  $Res call(
      {String? phoneNumber,
      String? name,
      String? dateOfBirth,
      String? profession,
      String? gender,
      String? profileImage});
}

/// @nodoc
class _$AddMemberReqCopyWithImpl<$Res, $Val extends AddMemberReq>
    implements $AddMemberReqCopyWith<$Res> {
  _$AddMemberReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? name = freezed,
    Object? dateOfBirth = freezed,
    Object? profession = freezed,
    Object? gender = freezed,
    Object? profileImage = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      profession: freezed == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddMemberReqImplCopyWith<$Res>
    implements $AddMemberReqCopyWith<$Res> {
  factory _$$AddMemberReqImplCopyWith(
          _$AddMemberReqImpl value, $Res Function(_$AddMemberReqImpl) then) =
      __$$AddMemberReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? phoneNumber,
      String? name,
      String? dateOfBirth,
      String? profession,
      String? gender,
      String? profileImage});
}

/// @nodoc
class __$$AddMemberReqImplCopyWithImpl<$Res>
    extends _$AddMemberReqCopyWithImpl<$Res, _$AddMemberReqImpl>
    implements _$$AddMemberReqImplCopyWith<$Res> {
  __$$AddMemberReqImplCopyWithImpl(
      _$AddMemberReqImpl _value, $Res Function(_$AddMemberReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? name = freezed,
    Object? dateOfBirth = freezed,
    Object? profession = freezed,
    Object? gender = freezed,
    Object? profileImage = freezed,
  }) {
    return _then(_$AddMemberReqImpl(
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      profession: freezed == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddMemberReqImpl implements _AddMemberReq {
  const _$AddMemberReqImpl(
      {this.phoneNumber,
      this.name,
      this.dateOfBirth,
      this.profession,
      this.gender,
      this.profileImage});

  factory _$AddMemberReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddMemberReqImplFromJson(json);

  @override
  final String? phoneNumber;
  @override
  final String? name;
  @override
  final String? dateOfBirth;
  @override
  final String? profession;
  @override
  final String? gender;
  @override
  final String? profileImage;

  @override
  String toString() {
    return 'AddMemberReq(phoneNumber: $phoneNumber, name: $name, dateOfBirth: $dateOfBirth, profession: $profession, gender: $gender, profileImage: $profileImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddMemberReqImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.profession, profession) ||
                other.profession == profession) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, name, dateOfBirth,
      profession, gender, profileImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddMemberReqImplCopyWith<_$AddMemberReqImpl> get copyWith =>
      __$$AddMemberReqImplCopyWithImpl<_$AddMemberReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddMemberReqImplToJson(
      this,
    );
  }
}

abstract class _AddMemberReq implements AddMemberReq {
  const factory _AddMemberReq(
      {final String? phoneNumber,
      final String? name,
      final String? dateOfBirth,
      final String? profession,
      final String? gender,
      final String? profileImage}) = _$AddMemberReqImpl;

  factory _AddMemberReq.fromJson(Map<String, dynamic> json) =
      _$AddMemberReqImpl.fromJson;

  @override
  String? get phoneNumber;
  @override
  String? get name;
  @override
  String? get dateOfBirth;
  @override
  String? get profession;
  @override
  String? get gender;
  @override
  String? get profileImage;
  @override
  @JsonKey(ignore: true)
  _$$AddMemberReqImplCopyWith<_$AddMemberReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddMemberRes _$AddMemberResFromJson(Map<String, dynamic> json) {
  return _AddMemberRes.fromJson(json);
}

/// @nodoc
mixin _$AddMemberRes {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Body? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddMemberResCopyWith<AddMemberRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddMemberResCopyWith<$Res> {
  factory $AddMemberResCopyWith(
          AddMemberRes value, $Res Function(AddMemberRes) then) =
      _$AddMemberResCopyWithImpl<$Res, AddMemberRes>;
  @useResult
  $Res call({bool? success, String? message, Body? body});

  $BodyCopyWith<$Res>? get body;
}

/// @nodoc
class _$AddMemberResCopyWithImpl<$Res, $Val extends AddMemberRes>
    implements $AddMemberResCopyWith<$Res> {
  _$AddMemberResCopyWithImpl(this._value, this._then);

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
abstract class _$$AddMemberResImplCopyWith<$Res>
    implements $AddMemberResCopyWith<$Res> {
  factory _$$AddMemberResImplCopyWith(
          _$AddMemberResImpl value, $Res Function(_$AddMemberResImpl) then) =
      __$$AddMemberResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, Body? body});

  @override
  $BodyCopyWith<$Res>? get body;
}

/// @nodoc
class __$$AddMemberResImplCopyWithImpl<$Res>
    extends _$AddMemberResCopyWithImpl<$Res, _$AddMemberResImpl>
    implements _$$AddMemberResImplCopyWith<$Res> {
  __$$AddMemberResImplCopyWithImpl(
      _$AddMemberResImpl _value, $Res Function(_$AddMemberResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? body = freezed,
  }) {
    return _then(_$AddMemberResImpl(
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
class _$AddMemberResImpl implements _AddMemberRes {
  const _$AddMemberResImpl({this.success, this.message, this.body});

  factory _$AddMemberResImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddMemberResImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final Body? body;

  @override
  String toString() {
    return 'AddMemberRes(success: $success, message: $message, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddMemberResImpl &&
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
  _$$AddMemberResImplCopyWith<_$AddMemberResImpl> get copyWith =>
      __$$AddMemberResImplCopyWithImpl<_$AddMemberResImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddMemberResImplToJson(
      this,
    );
  }
}

abstract class _AddMemberRes implements AddMemberRes {
  const factory _AddMemberRes(
      {final bool? success,
      final String? message,
      final Body? body}) = _$AddMemberResImpl;

  factory _AddMemberRes.fromJson(Map<String, dynamic> json) =
      _$AddMemberResImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  Body? get body;
  @override
  @JsonKey(ignore: true)
  _$$AddMemberResImplCopyWith<_$AddMemberResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Body _$BodyFromJson(Map<String, dynamic> json) {
  return _Body.fromJson(json);
}

/// @nodoc
mixin _$Body {
  MemberProfile? get memberProfile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BodyCopyWith<Body> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyCopyWith<$Res> {
  factory $BodyCopyWith(Body value, $Res Function(Body) then) =
      _$BodyCopyWithImpl<$Res, Body>;
  @useResult
  $Res call({MemberProfile? memberProfile});

  $MemberProfileCopyWith<$Res>? get memberProfile;
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
    Object? memberProfile = freezed,
  }) {
    return _then(_value.copyWith(
      memberProfile: freezed == memberProfile
          ? _value.memberProfile
          : memberProfile // ignore: cast_nullable_to_non_nullable
              as MemberProfile?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MemberProfileCopyWith<$Res>? get memberProfile {
    if (_value.memberProfile == null) {
      return null;
    }

    return $MemberProfileCopyWith<$Res>(_value.memberProfile!, (value) {
      return _then(_value.copyWith(memberProfile: value) as $Val);
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
  $Res call({MemberProfile? memberProfile});

  @override
  $MemberProfileCopyWith<$Res>? get memberProfile;
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
    Object? memberProfile = freezed,
  }) {
    return _then(_$BodyImpl(
      memberProfile: freezed == memberProfile
          ? _value.memberProfile
          : memberProfile // ignore: cast_nullable_to_non_nullable
              as MemberProfile?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BodyImpl implements _Body {
  const _$BodyImpl({this.memberProfile});

  factory _$BodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$BodyImplFromJson(json);

  @override
  final MemberProfile? memberProfile;

  @override
  String toString() {
    return 'Body(memberProfile: $memberProfile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyImpl &&
            (identical(other.memberProfile, memberProfile) ||
                other.memberProfile == memberProfile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, memberProfile);

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
  const factory _Body({final MemberProfile? memberProfile}) = _$BodyImpl;

  factory _Body.fromJson(Map<String, dynamic> json) = _$BodyImpl.fromJson;

  @override
  MemberProfile? get memberProfile;
  @override
  @JsonKey(ignore: true)
  _$$BodyImplCopyWith<_$BodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MemberProfile _$MemberProfileFromJson(Map<String, dynamic> json) {
  return _MemberProfile.fromJson(json);
}

/// @nodoc
mixin _$MemberProfile {
  String? get user => throw _privateConstructorUsedError;
  String? get organization => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  dynamic get coach => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get joiningDate => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberProfileCopyWith<MemberProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberProfileCopyWith<$Res> {
  factory $MemberProfileCopyWith(
          MemberProfile value, $Res Function(MemberProfile) then) =
      _$MemberProfileCopyWithImpl<$Res, MemberProfile>;
  @useResult
  $Res call(
      {String? user,
      String? organization,
      String? status,
      dynamic coach,
      String? id,
      String? joiningDate,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$MemberProfileCopyWithImpl<$Res, $Val extends MemberProfile>
    implements $MemberProfileCopyWith<$Res> {
  _$MemberProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? organization = freezed,
    Object? status = freezed,
    Object? coach = freezed,
    Object? id = freezed,
    Object? joiningDate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
}

/// @nodoc
abstract class _$$MemberProfileImplCopyWith<$Res>
    implements $MemberProfileCopyWith<$Res> {
  factory _$$MemberProfileImplCopyWith(
          _$MemberProfileImpl value, $Res Function(_$MemberProfileImpl) then) =
      __$$MemberProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? user,
      String? organization,
      String? status,
      dynamic coach,
      String? id,
      String? joiningDate,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$MemberProfileImplCopyWithImpl<$Res>
    extends _$MemberProfileCopyWithImpl<$Res, _$MemberProfileImpl>
    implements _$$MemberProfileImplCopyWith<$Res> {
  __$$MemberProfileImplCopyWithImpl(
      _$MemberProfileImpl _value, $Res Function(_$MemberProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? organization = freezed,
    Object? status = freezed,
    Object? coach = freezed,
    Object? id = freezed,
    Object? joiningDate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$MemberProfileImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$MemberProfileImpl implements _MemberProfile {
  const _$MemberProfileImpl(
      {this.user,
      this.organization,
      this.status,
      this.coach,
      this.id,
      this.joiningDate,
      this.createdAt,
      this.updatedAt});

  factory _$MemberProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberProfileImplFromJson(json);

  @override
  final String? user;
  @override
  final String? organization;
  @override
  final String? status;
  @override
  final dynamic coach;
  @override
  final String? id;
  @override
  final String? joiningDate;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'MemberProfile(user: $user, organization: $organization, status: $status, coach: $coach, id: $id, joiningDate: $joiningDate, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberProfileImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.coach, coach) &&
            (identical(other.id, id) || other.id == id) &&
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
      user,
      organization,
      status,
      const DeepCollectionEquality().hash(coach),
      id,
      joiningDate,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberProfileImplCopyWith<_$MemberProfileImpl> get copyWith =>
      __$$MemberProfileImplCopyWithImpl<_$MemberProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberProfileImplToJson(
      this,
    );
  }
}

abstract class _MemberProfile implements MemberProfile {
  const factory _MemberProfile(
      {final String? user,
      final String? organization,
      final String? status,
      final dynamic coach,
      final String? id,
      final String? joiningDate,
      final String? createdAt,
      final String? updatedAt}) = _$MemberProfileImpl;

  factory _MemberProfile.fromJson(Map<String, dynamic> json) =
      _$MemberProfileImpl.fromJson;

  @override
  String? get user;
  @override
  String? get organization;
  @override
  String? get status;
  @override
  dynamic get coach;
  @override
  String? get id;
  @override
  String? get joiningDate;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$MemberProfileImplCopyWith<_$MemberProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
