import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_coach_model.freezed.dart';
part 'get_coach_model.g.dart';

// response
GetCoachRes getCoachResFromJson(String str) =>
    GetCoachRes.fromJson(json.decode(str));

String getCoachResToJson(GetCoachRes data) => json.encode(data.toJson());

@freezed
class GetCoachRes with _$GetCoachRes {
  const factory GetCoachRes({
    bool? success,
    String? message,
    Body? body,
  }) = _GetCoachRes;

  factory GetCoachRes.fromJson(Map<String, dynamic> json) =>
      _$GetCoachResFromJson(json);
}

@freezed
class Body with _$Body {
  const factory Body({
    List<Coach>? coaches,
  }) = _Body;

  factory Body.fromJson(Map<String, dynamic> json) => _$BodyFromJson(json);
}

@freezed
class Coach with _$Coach {
  const factory Coach({
    @JsonKey(name: '_id') String? id,
    String? organization,
    String? memberId,
    @JsonKey(name: 'employeeId') EmployeeDetails? employeeDetails,
    String? assignDate,
  }) = _Coach;

  factory Coach.fromJson(Map<String, dynamic> json) => _$CoachFromJson(json);
}

@freezed
class EmployeeDetails with _$EmployeeDetails {
  const factory EmployeeDetails({
    @JsonKey(name: '_id') String? id,
    String? name,
    String? phoneNumber,
    String? dateOfBirth,
    String? gender,
    String? profession,
    String? address,
    String? profileImage,
    bool? isVerified,
  }) = _EmployeeId;

  factory EmployeeDetails.fromJson(Map<String, dynamic> json) =>
      _$EmployeeDetailsFromJson(json);
}
