// To parse this JSON data, do
//
//     final addDocumentReq = addDocumentReqFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_member_model.freezed.dart';
part 'add_member_model.g.dart';

// request
AddMemberReq addMemberReqFromJson(String str) =>
    AddMemberReq.fromJson(json.decode(str));

String addMemberReqToJson(AddMemberReq data) => json.encode(data.toJson());

@freezed
class AddMemberReq with _$AddMemberReq {
  const factory AddMemberReq({
    String? phoneNumber,
    String? name,
    String? dateOfBirth,
    String? profession,
    String? gender,
    String? profileImage,
  }) = _AddMemberReq;

  factory AddMemberReq.fromJson(Map<String, dynamic> json) =>
      _$AddMemberReqFromJson(json);
}

// response

AddMemberRes addMemberResFromJson(String str) =>
    AddMemberRes.fromJson(json.decode(str));

String addMemberResToJson(AddMemberRes data) => json.encode(data.toJson());

@freezed
class AddMemberRes with _$AddMemberRes {
  const factory AddMemberRes({
    bool? success,
    String? message,
    Body? body,
  }) = _AddMemberRes;

  factory AddMemberRes.fromJson(Map<String, dynamic> json) =>
      _$AddMemberResFromJson(json);
}

@freezed
class Body with _$Body {
  const factory Body({
    MemberProfile? memberProfile,
  }) = _Body;

  factory Body.fromJson(Map<String, dynamic> json) => _$BodyFromJson(json);
}

@freezed
class MemberProfile with _$MemberProfile {
  const factory MemberProfile({
    String? user,
    String? organization,
    String? status,
    dynamic coach,
    String? id,
    String? joiningDate,
    String? createdAt,
    String? updatedAt,
  }) = _MemberProfile;

  factory MemberProfile.fromJson(Map<String, dynamic> json) =>
      _$MemberProfileFromJson(json);
}
