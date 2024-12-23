// To parse this JSON data, do
//
//     final editStaffReq = editStaffReqFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_staff_model.freezed.dart';
part 'edit_staff_model.g.dart';

// request
EditStaffReq editStaffReqFromJson(String str) =>
    EditStaffReq.fromJson(json.decode(str));

String editStaffReqToJson(EditStaffReq data) => json.encode(data.toJson());

@freezed
class EditStaffReq with _$EditStaffReq {
  const factory EditStaffReq({
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
    DateTime? joiningDate,
  }) = _EditStaffReq;

  factory EditStaffReq.fromJson(Map<String, dynamic> json) =>
      _$EditStaffReqFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location({
    double? longitude,
    double? latitude,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

// reponse

EditStaffRes editStaffResFromJson(String str) =>
    EditStaffRes.fromJson(json.decode(str));

String editStaffResToJson(EditStaffRes data) => json.encode(data.toJson());

@freezed
class EditStaffRes with _$EditStaffRes {
  const factory EditStaffRes({
    bool? success,
    String? message,
  }) = _EditStaffRes;

  factory EditStaffRes.fromJson(Map<String, dynamic> json) =>
      _$EditStaffResFromJson(json);
}
