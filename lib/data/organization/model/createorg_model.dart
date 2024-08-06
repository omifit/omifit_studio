import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'createorg_model.freezed.dart';
part 'createorg_model.g.dart';

//! request
CreateorgReq createorgReqFromJson(String str) =>
    CreateorgReq.fromJson(json.decode(str));

String createorgReqToJson(CreateorgReq data) => json.encode(data.toJson());

@freezed
class CreateorgReq with _$CreateorgReq {
  const factory CreateorgReq({
    String? name,
    String? establishedDate,
    String? organizationImage,
    String? address,
    double? latitude,
    double? longitude,
  }) = _CreateorgReq;

  factory CreateorgReq.fromJson(Map<String, dynamic> json) =>
      _$CreateorgReqFromJson(json);
}

//! response

CreateorgRes createorgResFromJson(String str) =>
    CreateorgRes.fromJson(json.decode(str));

String createorgResToJson(CreateorgRes data) => json.encode(data.toJson());

@freezed
class CreateorgRes with _$CreateorgRes {
  const factory CreateorgRes({
    bool? success,
    String? message,
    Body? body,
  }) = _CreateorgRes;

  factory CreateorgRes.fromJson(Map<String, dynamic> json) =>
      _$CreateorgResFromJson(json);
}

@freezed
class Body with _$Body {
  const factory Body({
    String? name,
    String? orgImage,
    String? establishedDate,
    Location? location,
    String? address,
    String? id,
    String? createdAt,
    String? updatedAt,
  }) = _Body;

  factory Body.fromJson(Map<String, dynamic> json) => _$BodyFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location({
    String? type,
    List<double>? coordinates,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
