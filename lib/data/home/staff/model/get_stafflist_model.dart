import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_stafflist_model.freezed.dart';
part 'get_stafflist_model.g.dart';

// request

GetStaffListReq getStaffListReqFromJson(String str) =>
    GetStaffListReq.fromJson(json.decode(str));

String getStaffListReqToJson(GetStaffListReq data) =>
    json.encode(data.toJson());

@freezed
class GetStaffListReq with _$GetStaffListReq {
  const factory GetStaffListReq({
    String? name,
    String? number,
    String? status,
    String? nameOrNumber,
    String? joiningDate,
    DateTime? startDate,
    DateTime? endDate,
    int? page,
    int? limit,
  }) = _GetStaffListReq;

  factory GetStaffListReq.fromJson(Map<String, dynamic> json) =>
      _$GetStaffListReqFromJson(json);
}

// reponse
GetStafflistRes getStafflistResFromJson(String str) =>
    GetStafflistRes.fromJson(json.decode(str));

String getStafflistResToJson(GetStafflistRes data) =>
    json.encode(data.toJson());

@freezed
class GetStafflistRes with _$GetStafflistRes {
  const factory GetStafflistRes({
    bool? success,
    String? message,
    Body? body,
  }) = _GetStafflistRes;

  factory GetStafflistRes.fromJson(Map<String, dynamic> json) =>
      _$GetStafflistResFromJson(json);
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
    int? totalStudents,
    String? joiningDate,
    List<dynamic>? students,
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
