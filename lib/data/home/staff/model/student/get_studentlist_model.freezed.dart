// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_studentlist_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetStudentListRes _$GetStudentListResFromJson(Map<String, dynamic> json) {
  return _GetStudentListRes.fromJson(json);
}

/// @nodoc
mixin _$GetStudentListRes {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<Body>? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetStudentListResCopyWith<GetStudentListRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStudentListResCopyWith<$Res> {
  factory $GetStudentListResCopyWith(
          GetStudentListRes value, $Res Function(GetStudentListRes) then) =
      _$GetStudentListResCopyWithImpl<$Res, GetStudentListRes>;
  @useResult
  $Res call({bool? success, String? message, List<Body>? body});
}

/// @nodoc
class _$GetStudentListResCopyWithImpl<$Res, $Val extends GetStudentListRes>
    implements $GetStudentListResCopyWith<$Res> {
  _$GetStudentListResCopyWithImpl(this._value, this._then);

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
              as List<Body>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetStudentListResImplCopyWith<$Res>
    implements $GetStudentListResCopyWith<$Res> {
  factory _$$GetStudentListResImplCopyWith(_$GetStudentListResImpl value,
          $Res Function(_$GetStudentListResImpl) then) =
      __$$GetStudentListResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, List<Body>? body});
}

/// @nodoc
class __$$GetStudentListResImplCopyWithImpl<$Res>
    extends _$GetStudentListResCopyWithImpl<$Res, _$GetStudentListResImpl>
    implements _$$GetStudentListResImplCopyWith<$Res> {
  __$$GetStudentListResImplCopyWithImpl(_$GetStudentListResImpl _value,
      $Res Function(_$GetStudentListResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? body = freezed,
  }) {
    return _then(_$GetStudentListResImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value._body
          : body // ignore: cast_nullable_to_non_nullable
              as List<Body>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetStudentListResImpl implements _GetStudentListRes {
  const _$GetStudentListResImpl(
      {this.success, this.message, final List<Body>? body})
      : _body = body;

  factory _$GetStudentListResImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetStudentListResImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  final List<Body>? _body;
  @override
  List<Body>? get body {
    final value = _body;
    if (value == null) return null;
    if (_body is EqualUnmodifiableListView) return _body;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetStudentListRes(success: $success, message: $message, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStudentListResImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._body, _body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message,
      const DeepCollectionEquality().hash(_body));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStudentListResImplCopyWith<_$GetStudentListResImpl> get copyWith =>
      __$$GetStudentListResImplCopyWithImpl<_$GetStudentListResImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetStudentListResImplToJson(
      this,
    );
  }
}

abstract class _GetStudentListRes implements GetStudentListRes {
  const factory _GetStudentListRes(
      {final bool? success,
      final String? message,
      final List<Body>? body}) = _$GetStudentListResImpl;

  factory _GetStudentListRes.fromJson(Map<String, dynamic> json) =
      _$GetStudentListResImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  List<Body>? get body;
  @override
  @JsonKey(ignore: true)
  _$$GetStudentListResImplCopyWith<_$GetStudentListResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Body _$BodyFromJson(Map<String, dynamic> json) {
  return _Body.fromJson(json);
}

/// @nodoc
mixin _$Body {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'memberId')
  MemberDetails? get memberDetails => throw _privateConstructorUsedError;
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
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'memberId') MemberDetails? memberDetails,
      String? assignDate});

  $MemberDetailsCopyWith<$Res>? get memberDetails;
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
    Object? id = freezed,
    Object? memberDetails = freezed,
    Object? assignDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      memberDetails: freezed == memberDetails
          ? _value.memberDetails
          : memberDetails // ignore: cast_nullable_to_non_nullable
              as MemberDetails?,
      assignDate: freezed == assignDate
          ? _value.assignDate
          : assignDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MemberDetailsCopyWith<$Res>? get memberDetails {
    if (_value.memberDetails == null) {
      return null;
    }

    return $MemberDetailsCopyWith<$Res>(_value.memberDetails!, (value) {
      return _then(_value.copyWith(memberDetails: value) as $Val);
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
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'memberId') MemberDetails? memberDetails,
      String? assignDate});

  @override
  $MemberDetailsCopyWith<$Res>? get memberDetails;
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
    Object? id = freezed,
    Object? memberDetails = freezed,
    Object? assignDate = freezed,
  }) {
    return _then(_$BodyImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      memberDetails: freezed == memberDetails
          ? _value.memberDetails
          : memberDetails // ignore: cast_nullable_to_non_nullable
              as MemberDetails?,
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
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: 'memberId') this.memberDetails,
      this.assignDate});

  factory _$BodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$BodyImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'memberId')
  final MemberDetails? memberDetails;
  @override
  final String? assignDate;

  @override
  String toString() {
    return 'Body(id: $id, memberDetails: $memberDetails, assignDate: $assignDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.memberDetails, memberDetails) ||
                other.memberDetails == memberDetails) &&
            (identical(other.assignDate, assignDate) ||
                other.assignDate == assignDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, memberDetails, assignDate);

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
      {@JsonKey(name: '_id') final String? id,
      @JsonKey(name: 'memberId') final MemberDetails? memberDetails,
      final String? assignDate}) = _$BodyImpl;

  factory _Body.fromJson(Map<String, dynamic> json) = _$BodyImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: 'memberId')
  MemberDetails? get memberDetails;
  @override
  String? get assignDate;
  @override
  @JsonKey(ignore: true)
  _$$BodyImplCopyWith<_$BodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MemberDetails _$MemberDetailsFromJson(Map<String, dynamic> json) {
  return _MemberDetails.fromJson(json);
}

/// @nodoc
mixin _$MemberDetails {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get dateOfBirth => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get profession => throw _privateConstructorUsedError;
  String? get profileImage => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberDetailsCopyWith<MemberDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberDetailsCopyWith<$Res> {
  factory $MemberDetailsCopyWith(
          MemberDetails value, $Res Function(MemberDetails) then) =
      _$MemberDetailsCopyWithImpl<$Res, MemberDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? name,
      String? phoneNumber,
      String? dateOfBirth,
      String? gender,
      String? profession,
      String? profileImage,
      String? status});
}

/// @nodoc
class _$MemberDetailsCopyWithImpl<$Res, $Val extends MemberDetails>
    implements $MemberDetailsCopyWith<$Res> {
  _$MemberDetailsCopyWithImpl(this._value, this._then);

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
    Object? profileImage = freezed,
    Object? status = freezed,
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
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemberDetailsImplCopyWith<$Res>
    implements $MemberDetailsCopyWith<$Res> {
  factory _$$MemberDetailsImplCopyWith(
          _$MemberDetailsImpl value, $Res Function(_$MemberDetailsImpl) then) =
      __$$MemberDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? name,
      String? phoneNumber,
      String? dateOfBirth,
      String? gender,
      String? profession,
      String? profileImage,
      String? status});
}

/// @nodoc
class __$$MemberDetailsImplCopyWithImpl<$Res>
    extends _$MemberDetailsCopyWithImpl<$Res, _$MemberDetailsImpl>
    implements _$$MemberDetailsImplCopyWith<$Res> {
  __$$MemberDetailsImplCopyWithImpl(
      _$MemberDetailsImpl _value, $Res Function(_$MemberDetailsImpl) _then)
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
    Object? profileImage = freezed,
    Object? status = freezed,
  }) {
    return _then(_$MemberDetailsImpl(
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
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberDetailsImpl implements _MemberDetails {
  const _$MemberDetailsImpl(
      {@JsonKey(name: '_id') this.id,
      this.name,
      this.phoneNumber,
      this.dateOfBirth,
      this.gender,
      this.profession,
      this.profileImage,
      this.status});

  factory _$MemberDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberDetailsImplFromJson(json);

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
  final String? profileImage;
  @override
  final String? status;

  @override
  String toString() {
    return 'MemberDetails(id: $id, name: $name, phoneNumber: $phoneNumber, dateOfBirth: $dateOfBirth, gender: $gender, profession: $profession, profileImage: $profileImage, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.profession, profession) ||
                other.profession == profession) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, phoneNumber,
      dateOfBirth, gender, profession, profileImage, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberDetailsImplCopyWith<_$MemberDetailsImpl> get copyWith =>
      __$$MemberDetailsImplCopyWithImpl<_$MemberDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberDetailsImplToJson(
      this,
    );
  }
}

abstract class _MemberDetails implements MemberDetails {
  const factory _MemberDetails(
      {@JsonKey(name: '_id') final String? id,
      final String? name,
      final String? phoneNumber,
      final String? dateOfBirth,
      final String? gender,
      final String? profession,
      final String? profileImage,
      final String? status}) = _$MemberDetailsImpl;

  factory _MemberDetails.fromJson(Map<String, dynamic> json) =
      _$MemberDetailsImpl.fromJson;

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
  String? get profileImage;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$MemberDetailsImplCopyWith<_$MemberDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
