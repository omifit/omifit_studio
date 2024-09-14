import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_plan_model.freezed.dart';
part 'delete_plan_model.g.dart';

//! response

DeletePlanRes deletePlanResFromJson(String str) =>
    DeletePlanRes.fromJson(json.decode(str));

String deletePlanResToJson(DeletePlanRes data) => json.encode(data.toJson());

@freezed
class DeletePlanRes with _$DeletePlanRes {
  const factory DeletePlanRes({
    bool? success,
    String? message,
    dynamic body,
  }) = _DeletePlanRes;

  factory DeletePlanRes.fromJson(Map<String, dynamic> json) =>
      _$DeletePlanResFromJson(json);
}
