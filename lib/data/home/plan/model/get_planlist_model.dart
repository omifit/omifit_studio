// To parse this JSON data, do
//
//     final getPlanListRes = getPlanListResFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:omifit_studio/utils/json_parse.dart';

part 'get_planlist_model.freezed.dart';
part 'get_planlist_model.g.dart';

GetPlanListRes getPlanListResFromJson(String str) =>
    GetPlanListRes.fromJson(json.decode(str));

String getPlanListResToJson(GetPlanListRes data) => json.encode(data.toJson());

@freezed
class GetPlanListRes with _$GetPlanListRes {
  const factory GetPlanListRes({
    bool? success,
    String? message,
    Body? body,
  }) = _GetPlanListRes;

  factory GetPlanListRes.fromJson(Map<String, dynamic> json) =>
      _$GetPlanListResFromJson(json);
}

@freezed
class Body with _$Body {
  const factory Body({
    List<OrganizationPlan>? organizationPlans,
  }) = _Body;

  factory Body.fromJson(Map<String, dynamic> json) => _$BodyFromJson(json);
}

@freezed
class OrganizationPlan with _$OrganizationPlan {
  const factory OrganizationPlan({
    Duration? duration,
    @JsonKey(name: '_id') String? id,
    String? organization,
    String? name,
    String? description,
    @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? price,
    @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? fakeAmount,
    bool? isActive,
    @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? gst,
    @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? gstPercentage,
    String? createdAt,
    String? updatedAt,
    int? v,
  }) = _OrganizationPlan;

  factory OrganizationPlan.fromJson(Map<String, dynamic> json) =>
      _$OrganizationPlanFromJson(json);
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
