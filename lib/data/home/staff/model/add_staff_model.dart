// To parse this JSON data, do
//
//     final addStaffReq = addStaffReqFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_staff_model.freezed.dart';
part 'add_staff_model.g.dart';

// req

AddStaffReq addStaffReqFromJson(String str) =>
    AddStaffReq.fromJson(json.decode(str));

String addStaffReqToJson(AddStaffReq data) => json.encode(data.toJson());

@freezed
class AddStaffReq with _$AddStaffReq {
  const factory AddStaffReq({
    String? phoneNumber,
    String? name,
    DateTime? dateOfBirth,
    String? profession,
    String? gender,
    String? profileImage,
  }) = _AddStaffReq;

  factory AddStaffReq.fromJson(Map<String, dynamic> json) =>
      _$AddStaffReqFromJson(json);
}

// response

AddStaffRes addStaffResFromJson(String str) =>
    AddStaffRes.fromJson(json.decode(str));

String addStaffResToJson(AddStaffRes data) => json.encode(data.toJson());

@freezed
class AddStaffRes with _$AddStaffRes {
  const factory AddStaffRes({
    bool? success,
    String? message,
    dynamic body,
  }) = _AddStaffRes;

  factory AddStaffRes.fromJson(Map<String, dynamic> json) =>
      _$AddStaffResFromJson(json);
}
