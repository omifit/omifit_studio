// To parse this JSON data, do
//
//     final addStudentReq = addStudentReqFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_student_model.freezed.dart';
part 'add_student_model.g.dart';

// request
AddStudentReq addStudentReqFromJson(String str) =>
    AddStudentReq.fromJson(json.decode(str));

String addStudentReqToJson(AddStudentReq data) => json.encode(data.toJson());

@freezed
class AddStudentReq with _$AddStudentReq {
  const factory AddStudentReq({
    String? studentId,
    String? teacherId,
    DateTime? assignDate,
  }) = _AddStudentReq;

  factory AddStudentReq.fromJson(Map<String, dynamic> json) =>
      _$AddStudentReqFromJson(json);
}

//response

AddStudentRes addStudentResFromJson(String str) =>
    AddStudentRes.fromJson(json.decode(str));

String addStudentResToJson(AddStudentRes data) => json.encode(data.toJson());

@freezed
class AddStudentRes with _$AddStudentRes {
  const factory AddStudentRes({
    bool? success,
    String? message,
    Body? body,
  }) = _AddStudentRes;

  factory AddStudentRes.fromJson(Map<String, dynamic> json) =>
      _$AddStudentResFromJson(json);
}

@freezed
class Body with _$Body {
  const factory Body({
    String? organization,
    String? memberId,
    String? employeeId,
    String? id,
    String? assignDate,
  }) = _Body;

  factory Body.fromJson(Map<String, dynamic> json) => _$BodyFromJson(json);
}
