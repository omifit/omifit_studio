import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_member_model.freezed.dart';
part 'edit_member_model.g.dart';

// request
EditMemberReq editMemberReqFromJson(String str) =>
    EditMemberReq.fromJson(json.decode(str));

String editMemberReqToJson(EditMemberReq data) => json.encode(data.toJson());

@freezed
class EditMemberReq with _$EditMemberReq {
  const factory EditMemberReq({
    String? userId,
    String? otp,
    String? name,
    String? phoneNumber,
    DateTime? dateOfBirth,
    String? gender,
    String? profession,
    String? address,
    Location? location,
    String? profileImage,
    String? joiningDate,
  }) = _EditMemberReq;

  factory EditMemberReq.fromJson(Map<String, dynamic> json) =>
      _$EditMemberReqFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location({
    String? longitude,
    String? latitude,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

//response

EditMemberRes editMemberResFromJson(String str) =>
    EditMemberRes.fromJson(json.decode(str));

String editMemberResToJson(EditMemberRes data) => json.encode(data.toJson());

@freezed
class EditMemberRes with _$EditMemberRes {
  const factory EditMemberRes({
    bool? success,
    String? message,
  }) = _EditMemberRes;

  factory EditMemberRes.fromJson(Map<String, dynamic> json) =>
      _$EditMemberResFromJson(json);
}
