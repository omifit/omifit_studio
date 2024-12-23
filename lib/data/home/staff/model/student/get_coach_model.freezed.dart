// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_coach_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetCoachRes _$GetCoachResFromJson(Map<String, dynamic> json) {
  return _GetCoachRes.fromJson(json);
}

/// @nodoc
mixin _$GetCoachRes {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Body? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCoachResCopyWith<GetCoachRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCoachResCopyWith<$Res> {
  factory $GetCoachResCopyWith(
          GetCoachRes value, $Res Function(GetCoachRes) then) =
      _$GetCoachResCopyWithImpl<$Res, GetCoachRes>;
  @useResult
  $Res call({bool? success, String? message, Body? body});

  $BodyCopyWith<$Res>? get body;
}

/// @nodoc
class _$GetCoachResCopyWithImpl<$Res, $Val extends GetCoachRes>
    implements $GetCoachResCopyWith<$Res> {
  _$GetCoachResCopyWithImpl(this._value, this._then);

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
abstract class _$$GetCoachResImplCopyWith<$Res>
    implements $GetCoachResCopyWith<$Res> {
  factory _$$GetCoachResImplCopyWith(
          _$GetCoachResImpl value, $Res Function(_$GetCoachResImpl) then) =
      __$$GetCoachResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, Body? body});

  @override
  $BodyCopyWith<$Res>? get body;
}

/// @nodoc
class __$$GetCoachResImplCopyWithImpl<$Res>
    extends _$GetCoachResCopyWithImpl<$Res, _$GetCoachResImpl>
    implements _$$GetCoachResImplCopyWith<$Res> {
  __$$GetCoachResImplCopyWithImpl(
      _$GetCoachResImpl _value, $Res Function(_$GetCoachResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? body = freezed,
  }) {
    return _then(_$GetCoachResImpl(
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
class _$GetCoachResImpl implements _GetCoachRes {
  const _$GetCoachResImpl({this.success, this.message, this.body});

  factory _$GetCoachResImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetCoachResImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final Body? body;

  @override
  String toString() {
    return 'GetCoachRes(success: $success, message: $message, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCoachResImpl &&
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
  _$$GetCoachResImplCopyWith<_$GetCoachResImpl> get copyWith =>
      __$$GetCoachResImplCopyWithImpl<_$GetCoachResImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetCoachResImplToJson(
      this,
    );
  }
}

abstract class _GetCoachRes implements GetCoachRes {
  const factory _GetCoachRes(
      {final bool? success,
      final String? message,
      final Body? body}) = _$GetCoachResImpl;

  factory _GetCoachRes.fromJson(Map<String, dynamic> json) =
      _$GetCoachResImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  Body? get body;
  @override
  @JsonKey(ignore: true)
  _$$GetCoachResImplCopyWith<_$GetCoachResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Body _$BodyFromJson(Map<String, dynamic> json) {
  return _Body.fromJson(json);
}

/// @nodoc
mixin _$Body {
  List<Coach>? get coaches => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BodyCopyWith<Body> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyCopyWith<$Res> {
  factory $BodyCopyWith(Body value, $Res Function(Body) then) =
      _$BodyCopyWithImpl<$Res, Body>;
  @useResult
  $Res call({List<Coach>? coaches});
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
    Object? coaches = freezed,
  }) {
    return _then(_value.copyWith(
      coaches: freezed == coaches
          ? _value.coaches
          : coaches // ignore: cast_nullable_to_non_nullable
              as List<Coach>?,
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
  $Res call({List<Coach>? coaches});
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
    Object? coaches = freezed,
  }) {
    return _then(_$BodyImpl(
      coaches: freezed == coaches
          ? _value._coaches
          : coaches // ignore: cast_nullable_to_non_nullable
              as List<Coach>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BodyImpl implements _Body {
  const _$BodyImpl({final List<Coach>? coaches}) : _coaches = coaches;

  factory _$BodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$BodyImplFromJson(json);

  final List<Coach>? _coaches;
  @override
  List<Coach>? get coaches {
    final value = _coaches;
    if (value == null) return null;
    if (_coaches is EqualUnmodifiableListView) return _coaches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Body(coaches: $coaches)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyImpl &&
            const DeepCollectionEquality().equals(other._coaches, _coaches));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_coaches));

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
  const factory _Body({final List<Coach>? coaches}) = _$BodyImpl;

  factory _Body.fromJson(Map<String, dynamic> json) = _$BodyImpl.fromJson;

  @override
  List<Coach>? get coaches;
  @override
  @JsonKey(ignore: true)
  _$$BodyImplCopyWith<_$BodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Coach _$CoachFromJson(Map<String, dynamic> json) {
  return _Coach.fromJson(json);
}

/// @nodoc
mixin _$Coach {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get organization => throw _privateConstructorUsedError;
  String? get memberId => throw _privateConstructorUsedError;
  @JsonKey(name: 'employeeId')
  EmployeeDetails? get employeeDetails => throw _privateConstructorUsedError;
  String? get assignDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoachCopyWith<Coach> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachCopyWith<$Res> {
  factory $CoachCopyWith(Coach value, $Res Function(Coach) then) =
      _$CoachCopyWithImpl<$Res, Coach>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? organization,
      String? memberId,
      @JsonKey(name: 'employeeId') EmployeeDetails? employeeDetails,
      String? assignDate});

  $EmployeeDetailsCopyWith<$Res>? get employeeDetails;
}

/// @nodoc
class _$CoachCopyWithImpl<$Res, $Val extends Coach>
    implements $CoachCopyWith<$Res> {
  _$CoachCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? organization = freezed,
    Object? memberId = freezed,
    Object? employeeDetails = freezed,
    Object? assignDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String?,
      memberId: freezed == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeDetails: freezed == employeeDetails
          ? _value.employeeDetails
          : employeeDetails // ignore: cast_nullable_to_non_nullable
              as EmployeeDetails?,
      assignDate: freezed == assignDate
          ? _value.assignDate
          : assignDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EmployeeDetailsCopyWith<$Res>? get employeeDetails {
    if (_value.employeeDetails == null) {
      return null;
    }

    return $EmployeeDetailsCopyWith<$Res>(_value.employeeDetails!, (value) {
      return _then(_value.copyWith(employeeDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoachImplCopyWith<$Res> implements $CoachCopyWith<$Res> {
  factory _$$CoachImplCopyWith(
          _$CoachImpl value, $Res Function(_$CoachImpl) then) =
      __$$CoachImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? organization,
      String? memberId,
      @JsonKey(name: 'employeeId') EmployeeDetails? employeeDetails,
      String? assignDate});

  @override
  $EmployeeDetailsCopyWith<$Res>? get employeeDetails;
}

/// @nodoc
class __$$CoachImplCopyWithImpl<$Res>
    extends _$CoachCopyWithImpl<$Res, _$CoachImpl>
    implements _$$CoachImplCopyWith<$Res> {
  __$$CoachImplCopyWithImpl(
      _$CoachImpl _value, $Res Function(_$CoachImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? organization = freezed,
    Object? memberId = freezed,
    Object? employeeDetails = freezed,
    Object? assignDate = freezed,
  }) {
    return _then(_$CoachImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String?,
      memberId: freezed == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeDetails: freezed == employeeDetails
          ? _value.employeeDetails
          : employeeDetails // ignore: cast_nullable_to_non_nullable
              as EmployeeDetails?,
      assignDate: freezed == assignDate
          ? _value.assignDate
          : assignDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoachImpl implements _Coach {
  const _$CoachImpl(
      {@JsonKey(name: '_id') this.id,
      this.organization,
      this.memberId,
      @JsonKey(name: 'employeeId') this.employeeDetails,
      this.assignDate});

  factory _$CoachImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoachImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? organization;
  @override
  final String? memberId;
  @override
  @JsonKey(name: 'employeeId')
  final EmployeeDetails? employeeDetails;
  @override
  final String? assignDate;

  @override
  String toString() {
    return 'Coach(id: $id, organization: $organization, memberId: $memberId, employeeDetails: $employeeDetails, assignDate: $assignDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.employeeDetails, employeeDetails) ||
                other.employeeDetails == employeeDetails) &&
            (identical(other.assignDate, assignDate) ||
                other.assignDate == assignDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, organization, memberId, employeeDetails, assignDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachImplCopyWith<_$CoachImpl> get copyWith =>
      __$$CoachImplCopyWithImpl<_$CoachImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoachImplToJson(
      this,
    );
  }
}

abstract class _Coach implements Coach {
  const factory _Coach(
      {@JsonKey(name: '_id') final String? id,
      final String? organization,
      final String? memberId,
      @JsonKey(name: 'employeeId') final EmployeeDetails? employeeDetails,
      final String? assignDate}) = _$CoachImpl;

  factory _Coach.fromJson(Map<String, dynamic> json) = _$CoachImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get organization;
  @override
  String? get memberId;
  @override
  @JsonKey(name: 'employeeId')
  EmployeeDetails? get employeeDetails;
  @override
  String? get assignDate;
  @override
  @JsonKey(ignore: true)
  _$$CoachImplCopyWith<_$CoachImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EmployeeDetails _$EmployeeDetailsFromJson(Map<String, dynamic> json) {
  return _EmployeeId.fromJson(json);
}

/// @nodoc
mixin _$EmployeeDetails {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get dateOfBirth => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get profession => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get profileImage => throw _privateConstructorUsedError;
  bool? get isVerified => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeDetailsCopyWith<EmployeeDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeDetailsCopyWith<$Res> {
  factory $EmployeeDetailsCopyWith(
          EmployeeDetails value, $Res Function(EmployeeDetails) then) =
      _$EmployeeDetailsCopyWithImpl<$Res, EmployeeDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? name,
      String? phoneNumber,
      String? dateOfBirth,
      String? gender,
      String? profession,
      String? address,
      String? profileImage,
      bool? isVerified});
}

/// @nodoc
class _$EmployeeDetailsCopyWithImpl<$Res, $Val extends EmployeeDetails>
    implements $EmployeeDetailsCopyWith<$Res> {
  _$EmployeeDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? profession = freezed,
    Object? address = freezed,
    Object? profileImage = freezed,
    Object? isVerified = freezed,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmployeeIdImplCopyWith<$Res>
    implements $EmployeeDetailsCopyWith<$Res> {
  factory _$$EmployeeIdImplCopyWith(
          _$EmployeeIdImpl value, $Res Function(_$EmployeeIdImpl) then) =
      __$$EmployeeIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? name,
      String? phoneNumber,
      String? dateOfBirth,
      String? gender,
      String? profession,
      String? address,
      String? profileImage,
      bool? isVerified});
}

/// @nodoc
class __$$EmployeeIdImplCopyWithImpl<$Res>
    extends _$EmployeeDetailsCopyWithImpl<$Res, _$EmployeeIdImpl>
    implements _$$EmployeeIdImplCopyWith<$Res> {
  __$$EmployeeIdImplCopyWithImpl(
      _$EmployeeIdImpl _value, $Res Function(_$EmployeeIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? profession = freezed,
    Object? address = freezed,
    Object? profileImage = freezed,
    Object? isVerified = freezed,
  }) {
    return _then(_$EmployeeIdImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmployeeIdImpl implements _EmployeeId {
  const _$EmployeeIdImpl(
      {@JsonKey(name: '_id') this.id,
      this.name,
      this.phoneNumber,
      this.dateOfBirth,
      this.gender,
      this.profession,
      this.address,
      this.profileImage,
      this.isVerified});

  factory _$EmployeeIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmployeeIdImplFromJson(json);

  @override
  @JsonKey(name: '_id')
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
  String toString() {
    return 'EmployeeDetails(id: $id, name: $name, phoneNumber: $phoneNumber, dateOfBirth: $dateOfBirth, gender: $gender, profession: $profession, address: $address, profileImage: $profileImage, isVerified: $isVerified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeIdImpl &&
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
                other.isVerified == isVerified));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, phoneNumber,
      dateOfBirth, gender, profession, address, profileImage, isVerified);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeIdImplCopyWith<_$EmployeeIdImpl> get copyWith =>
      __$$EmployeeIdImplCopyWithImpl<_$EmployeeIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeeIdImplToJson(
      this,
    );
  }
}

abstract class _EmployeeId implements EmployeeDetails {
  const factory _EmployeeId(
      {@JsonKey(name: '_id') final String? id,
      final String? name,
      final String? phoneNumber,
      final String? dateOfBirth,
      final String? gender,
      final String? profession,
      final String? address,
      final String? profileImage,
      final bool? isVerified}) = _$EmployeeIdImpl;

  factory _EmployeeId.fromJson(Map<String, dynamic> json) =
      _$EmployeeIdImpl.fromJson;

  @override
  @JsonKey(name: '_id')
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
  @JsonKey(ignore: true)
  _$$EmployeeIdImplCopyWith<_$EmployeeIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
