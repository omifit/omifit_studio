import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'remove_student_model.freezed.dart';
part 'remove_student_model.g.dart';

// request
RemoveStudentReq removeStudentReqFromJson(String str) =>
    RemoveStudentReq.fromJson(json.decode(str));

String removeStudentReqToJson(RemoveStudentReq data) =>
    json.encode(data.toJson());

@freezed
class RemoveStudentReq with _$RemoveStudentReq {
  const factory RemoveStudentReq({
    String? studentId,
    String? teacherId,
  }) = _RemoveStudentReq;

  factory RemoveStudentReq.fromJson(Map<String, dynamic> json) =>
      _$RemoveStudentReqFromJson(json);
}

//response
RemoveStudentRes removeStudentResFromJson(String str) =>
    RemoveStudentRes.fromJson(json.decode(str));

String removeStudentResToJson(RemoveStudentRes data) =>
    json.encode(data.toJson());

@freezed
class RemoveStudentRes with _$RemoveStudentRes {
  const factory RemoveStudentRes({
    bool? success,
    String? message,
  }) = _RemoveStudentRes;

  factory RemoveStudentRes.fromJson(Map<String, dynamic> json) =>
      _$RemoveStudentResFromJson(json);
}
