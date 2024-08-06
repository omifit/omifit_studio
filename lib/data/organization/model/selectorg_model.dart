// To parse this JSON data, do
//
//     final selectorgReq = selectorgReqFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'selectorg_model.freezed.dart';
part 'selectorg_model.g.dart';

//! request
SelectorgReq selectorgReqFromJson(String str) =>
    SelectorgReq.fromJson(json.decode(str));

String selectorgReqToJson(SelectorgReq data) => json.encode(data.toJson());

@freezed
class SelectorgReq with _$SelectorgReq {
  const factory SelectorgReq({
    String? organizationId,
  }) = _SelectorgReq;

  factory SelectorgReq.fromJson(Map<String, dynamic> json) =>
      _$SelectorgReqFromJson(json);
}

//! response
SelectorgRes selectorgResFromJson(String str) =>
    SelectorgRes.fromJson(json.decode(str));

String selectorgResToJson(SelectorgRes data) => json.encode(data.toJson());

@freezed
class SelectorgRes with _$SelectorgRes {
  const factory SelectorgRes({
    bool? success,
    String? message,
    Body? body,
  }) = _SelectorgRes;

  factory SelectorgRes.fromJson(Map<String, dynamic> json) =>
      _$SelectorgResFromJson(json);
}

@freezed
class Body with _$Body {
  const factory Body({
    String? token,
  }) = _Body;

  factory Body.fromJson(Map<String, dynamic> json) => _$BodyFromJson(json);
}
