// To parse this JSON data, do
//
//     final getStudentListRes = getStudentListResFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_studentlist_model.freezed.dart';
part 'get_studentlist_model.g.dart';

// response
GetStudentListRes getStudentListResFromJson(String str) =>
    GetStudentListRes.fromJson(json.decode(str));

String getStudentListResToJson(GetStudentListRes data) =>
    json.encode(data.toJson());

@freezed
class GetStudentListRes with _$GetStudentListRes {
  const factory GetStudentListRes({
    bool? success,
    String? message,
    List<Body>? body,
  }) = _GetStudentListRes;

  factory GetStudentListRes.fromJson(Map<String, dynamic> json) =>
      _$GetStudentListResFromJson(json);
}

@freezed
class Body with _$Body {
  const factory Body({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'memberId') MemberDetails? memberDetails,
    String? assignDate,
  }) = _Body;

  factory Body.fromJson(Map<String, dynamic> json) => _$BodyFromJson(json);
}

@freezed
class MemberDetails with _$MemberDetails {
  const factory MemberDetails({
    @JsonKey(name: '_id') String? id,
    String? name,
    String? phoneNumber,
    String? dateOfBirth,
    String? gender,
    String? profession,
    String? profileImage,
    String? status,
  }) = _MemberDetails;

  factory MemberDetails.fromJson(Map<String, dynamic> json) =>
      _$MemberDetailsFromJson(json);
}
