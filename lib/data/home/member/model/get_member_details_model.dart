import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_member_details_model.freezed.dart';
part 'get_member_details_model.g.dart';

// reponse
MemberDetailsRes memberDetailsResFromJson(String str) =>
    MemberDetailsRes.fromJson(json.decode(str));

String memberDetailsResToJson(MemberDetailsRes data) =>
    json.encode(data.toJson());

@freezed
class MemberDetailsRes with _$MemberDetailsRes {
  const factory MemberDetailsRes({
    bool? success,
    String? message,
    Body? body,
  }) = _MemberDetailsRes;

  factory MemberDetailsRes.fromJson(Map<String, dynamic> json) =>
      _$MemberDetailsResFromJson(json);
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
    dynamic coach,
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
    Location? location,
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

@freezed
class Location with _$Location {
  const factory Location({
    String? type,
    List<double>? coordinates,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
