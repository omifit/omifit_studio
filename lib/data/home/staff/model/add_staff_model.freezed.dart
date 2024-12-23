// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_staff_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddStaffReq _$AddStaffReqFromJson(Map<String, dynamic> json) {
  return _AddStaffReq.fromJson(json);
}

/// @nodoc
mixin _$AddStaffReq {
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  String? get profession => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get profileImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddStaffReqCopyWith<AddStaffReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddStaffReqCopyWith<$Res> {
  factory $AddStaffReqCopyWith(
          AddStaffReq value, $Res Function(AddStaffReq) then) =
      _$AddStaffReqCopyWithImpl<$Res, AddStaffReq>;
  @useResult
  $Res call(
      {String? phoneNumber,
      String? name,
      DateTime? dateOfBirth,
      String? profession,
      String? gender,
      String? profileImage});
}

/// @nodoc
class _$AddStaffReqCopyWithImpl<$Res, $Val extends AddStaffReq>
    implements $AddStaffReqCopyWith<$Res> {
  _$AddStaffReqCopyWithImpl(this._value, this._then);

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
              as DateTime?,
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
abstract class _$$AddStaffReqImplCopyWith<$Res>
    implements $AddStaffReqCopyWith<$Res> {
  factory _$$AddStaffReqImplCopyWith(
          _$AddStaffReqImpl value, $Res Function(_$AddStaffReqImpl) then) =
      __$$AddStaffReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? phoneNumber,
      String? name,
      DateTime? dateOfBirth,
      String? profession,
      String? gender,
      String? profileImage});
}

/// @nodoc
class __$$AddStaffReqImplCopyWithImpl<$Res>
    extends _$AddStaffReqCopyWithImpl<$Res, _$AddStaffReqImpl>
    implements _$$AddStaffReqImplCopyWith<$Res> {
  __$$AddStaffReqImplCopyWithImpl(
      _$AddStaffReqImpl _value, $Res Function(_$AddStaffReqImpl) _then)
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
    return _then(_$AddStaffReqImpl(
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
              as DateTime?,
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
class _$AddStaffReqImpl implements _AddStaffReq {
  const _$AddStaffReqImpl(
      {this.phoneNumber,
      this.name,
      this.dateOfBirth,
      this.profession,
      this.gender,
      this.profileImage});

  factory _$AddStaffReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddStaffReqImplFromJson(json);

  @override
  final String? phoneNumber;
  @override
  final String? name;
  @override
  final DateTime? dateOfBirth;
  @override
  final String? profession;
  @override
  final String? gender;
  @override
  final String? profileImage;

  @override
  String toString() {
    return 'AddStaffReq(phoneNumber: $phoneNumber, name: $name, dateOfBirth: $dateOfBirth, profession: $profession, gender: $gender, profileImage: $profileImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddStaffReqImpl &&
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
  _$$AddStaffReqImplCopyWith<_$AddStaffReqImpl> get copyWith =>
      __$$AddStaffReqImplCopyWithImpl<_$AddStaffReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddStaffReqImplToJson(
      this,
    );
  }
}

abstract class _AddStaffReq implements AddStaffReq {
  const factory _AddStaffReq(
      {final String? phoneNumber,
      final String? name,
      final DateTime? dateOfBirth,
      final String? profession,
      final String? gender,
      final String? profileImage}) = _$AddStaffReqImpl;

  factory _AddStaffReq.fromJson(Map<String, dynamic> json) =
      _$AddStaffReqImpl.fromJson;

  @override
  String? get phoneNumber;
  @override
  String? get name;
  @override
  DateTime? get dateOfBirth;
  @override
  String? get profession;
  @override
  String? get gender;
  @override
  String? get profileImage;
  @override
  @JsonKey(ignore: true)
  _$$AddStaffReqImplCopyWith<_$AddStaffReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddStaffRes _$AddStaffResFromJson(Map<String, dynamic> json) {
  return _AddStaffRes.fromJson(json);
}

/// @nodoc
mixin _$AddStaffRes {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  dynamic get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddStaffResCopyWith<AddStaffRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddStaffResCopyWith<$Res> {
  factory $AddStaffResCopyWith(
          AddStaffRes value, $Res Function(AddStaffRes) then) =
      _$AddStaffResCopyWithImpl<$Res, AddStaffRes>;
  @useResult
  $Res call({bool? success, String? message, dynamic body});
}

/// @nodoc
class _$AddStaffResCopyWithImpl<$Res, $Val extends AddStaffRes>
    implements $AddStaffResCopyWith<$Res> {
  _$AddStaffResCopyWithImpl(this._value, this._then);

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
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddStaffResImplCopyWith<$Res>
    implements $AddStaffResCopyWith<$Res> {
  factory _$$AddStaffResImplCopyWith(
          _$AddStaffResImpl value, $Res Function(_$AddStaffResImpl) then) =
      __$$AddStaffResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, dynamic body});
}

/// @nodoc
class __$$AddStaffResImplCopyWithImpl<$Res>
    extends _$AddStaffResCopyWithImpl<$Res, _$AddStaffResImpl>
    implements _$$AddStaffResImplCopyWith<$Res> {
  __$$AddStaffResImplCopyWithImpl(
      _$AddStaffResImpl _value, $Res Function(_$AddStaffResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? body = freezed,
  }) {
    return _then(_$AddStaffResImpl(
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
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddStaffResImpl implements _AddStaffRes {
  const _$AddStaffResImpl({this.success, this.message, this.body});

  factory _$AddStaffResImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddStaffResImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final dynamic body;

  @override
  String toString() {
    return 'AddStaffRes(success: $success, message: $message, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddStaffResImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.body, body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, message, const DeepCollectionEquality().hash(body));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddStaffResImplCopyWith<_$AddStaffResImpl> get copyWith =>
      __$$AddStaffResImplCopyWithImpl<_$AddStaffResImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddStaffResImplToJson(
      this,
    );
  }
}

abstract class _AddStaffRes implements AddStaffRes {
  const factory _AddStaffRes(
      {final bool? success,
      final String? message,
      final dynamic body}) = _$AddStaffResImpl;

  factory _AddStaffRes.fromJson(Map<String, dynamic> json) =
      _$AddStaffResImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  dynamic get body;
  @override
  @JsonKey(ignore: true)
  _$$AddStaffResImplCopyWith<_$AddStaffResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
