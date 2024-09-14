import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:omifit/utils/json_parse.dart';

part 'create_plan_model.freezed.dart';
part 'create_plan_model.g.dart';

//! request
CreatePlanReq createPlanReqFromJson(String str) =>
    CreatePlanReq.fromJson(json.decode(str));

String createPlanReqToJson(CreatePlanReq data) => json.encode(data.toJson());

@freezed
class CreatePlanReq with _$CreatePlanReq {
  const factory CreatePlanReq({
    String? name,
    String? description,
    @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? price,
    @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? fakeAmount,
    Duration? duration,
    bool? isActive,
    @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? gst,
    @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? gstPercentage,
  }) = _CreatePlanReq;

  factory CreatePlanReq.fromJson(Map<String, dynamic> json) =>
      _$CreatePlanReqFromJson(json);
}

@freezed
class Duration with _$Duration {
  const factory Duration({
    int? value,
    String? unit,
    int? numberOfDays,
  }) = _Duration;

  factory Duration.fromJson(Map<String, dynamic> json) =>
      _$DurationFromJson(json);
}

//! response

CreatePlanRes createPlanResFromJson(String str) =>
    CreatePlanRes.fromJson(json.decode(str));

String createPlanResToJson(CreatePlanRes data) => json.encode(data.toJson());

@freezed
class CreatePlanRes with _$CreatePlanRes {
  const factory CreatePlanRes({
    bool? success,
    String? message,
    dynamic body,
  }) = _CreatePlanRes;

  factory CreatePlanRes.fromJson(Map<String, dynamic> json) =>
      _$CreatePlanResFromJson(json);
}
