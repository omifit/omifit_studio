// To parse this JSON data, do
//
//     final getStaffDetailsRes = getStaffDetailsResFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_staff_details_model.freezed.dart';
part 'get_staff_details_model.g.dart';

//response
GetStaffDetailsRes getStaffDetailsResFromJson(String str) =>
    GetStaffDetailsRes.fromJson(json.decode(str));

String getStaffDetailsResToJson(GetStaffDetailsRes data) =>
    json.encode(data.toJson());

@freezed
class GetStaffDetailsRes with _$GetStaffDetailsRes {
  const factory GetStaffDetailsRes({
    bool? success,
    String? message,
    Body? body,
  }) = _GetStaffDetailsRes;

  factory GetStaffDetailsRes.fromJson(Map<String, dynamic> json) =>
      _$GetStaffDetailsResFromJson(json);
}

@freezed
class Body with _$Body {
  const factory Body({
    OrganizationMember? organizationMember,
  }) = _Body;

  factory Body.fromJson(Map<String, dynamic> json) => _$BodyFromJson(json);
}

@freezed
class OrganizationMember with _$OrganizationMember {
  const factory OrganizationMember({
    @JsonKey(name: '_id') String? id,
    User? user,
    String? organization,
    String? status,
    int? totalStudents,
    String? joiningDate,
    String? createdAt,
    String? updatedAt,
  }) = _OrganizationMember;

  factory OrganizationMember.fromJson(Map<String, dynamic> json) =>
      _$OrganizationMemberFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: '_id') String? id,
    String? name,
    String? phoneNumber,
    String? dateOfBirth,
    String? gender,
    String? profession,
    String? address,
    String? profileImage,
    bool? isVerified,
    String? createdAt,
    String? updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
