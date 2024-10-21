// To parse this JSON data, do
//
//     final getMemberListRes = getMemberListResFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_memberlist_model.freezed.dart';
part 'get_memberlist_model.g.dart';

//request

GetMemberListReq getMemberListReqFromJson(String str) =>
    GetMemberListReq.fromJson(json.decode(str));

String getMemberListReqToJson(GetMemberListReq data) =>
    json.encode(data.toJson());

@freezed
class GetMemberListReq with _$GetMemberListReq {
  const factory GetMemberListReq({
    String? name,
    String? number,
    String? nameOrNumber,
    String? joiningDate,
    String? startDate,
    String? endDate,
    int? page,
    int? limit,
  }) = _GetMemberListReq;

  factory GetMemberListReq.fromJson(Map<String, dynamic> json) =>
      _$GetMemberListReqFromJson(json);
}

// response

GetMemberListRes getMemberListResFromJson(String str) =>
    GetMemberListRes.fromJson(json.decode(str));

String getMemberListResToJson(GetMemberListRes data) =>
    json.encode(data.toJson());

@freezed
class GetMemberListRes with _$GetMemberListRes {
  const factory GetMemberListRes({
    bool? success,
    String? message,
    Body? body,
  }) = _GetMemberListRes;

  factory GetMemberListRes.fromJson(Map<String, dynamic> json) =>
      _$GetMemberListResFromJson(json);
}

@freezed
class Body with _$Body {
  const factory Body({
    List<OrganizationMember>? organizationMembers,
    Pagination? pagination,
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
    String? profileImage,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Pagination with _$Pagination {
  const factory Pagination({
    int? totalCount,
    int? totalPages,
    int? currentPage,
    int? pageSize,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}
