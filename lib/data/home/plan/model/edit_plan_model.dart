import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:omifit_studio/utils/json_parse.dart';

part 'edit_plan_model.freezed.dart';
part 'edit_plan_model.g.dart';

//! request
EditPlanReq editPlanReqFromJson(String str) =>
    EditPlanReq.fromJson(json.decode(str));

String editPlanReqToJson(EditPlanReq data) => json.encode(data.toJson());

@freezed
class EditPlanReq with _$EditPlanReq {
  const factory EditPlanReq({
    String? name,
    String? description,
    @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? price,
    @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? fakeAmount,
    Duration? duration,
    bool? isActive,
    @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? gst,
    @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? gstPercentage,
  }) = _EditPlanReq;

  factory EditPlanReq.fromJson(Map<String, dynamic> json) =>
      _$EditPlanReqFromJson(json);
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

EditPlanRes editPlanResFromJson(String str) =>
    EditPlanRes.fromJson(json.decode(str));

String editPlanResToJson(EditPlanRes data) => json.encode(data.toJson());

@freezed
class EditPlanRes with _$EditPlanRes {
  const factory EditPlanRes({
    bool? success,
    String? message,
    dynamic body,
  }) = _EditPlanRes;

  factory EditPlanRes.fromJson(Map<String, dynamic> json) =>
      _$EditPlanResFromJson(json);
}
