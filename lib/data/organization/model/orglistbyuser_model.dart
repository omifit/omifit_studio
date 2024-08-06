import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'orglistbyuser_model.freezed.dart';
part 'orglistbyuser_model.g.dart';

//! response

OrglistbyuserRes orglistbyuserResFromJson(String str) =>
    OrglistbyuserRes.fromJson(json.decode(str));

String orglistbyuserResToJson(OrglistbyuserRes data) =>
    json.encode(data.toJson());

@freezed
class OrglistbyuserRes with _$OrglistbyuserRes {
  const factory OrglistbyuserRes({
    bool? success,
    String? message,
    Body? body,
  }) = _OrglistbyuserRes;

  factory OrglistbyuserRes.fromJson(Map<String, dynamic> json) =>
      _$OrglistbyuserResFromJson(json);
}

@freezed
class Body with _$Body {
  const factory Body({
    List<OrganizationElement>? organizations,
  }) = _Body;

  factory Body.fromJson(Map<String, dynamic> json) => _$BodyFromJson(json);
}

@freezed
class OrganizationElement with _$OrganizationElement {
  const factory OrganizationElement({
    String? id,
    String? user,
    Organization? organization,
    String? role,
    List<dynamic>? membershipPlans,
    String? memberPhoneNumber,
    String? createdAt,
    String? updatedAt,
  }) = _OrganizationElement;

  factory OrganizationElement.fromJson(Map<String, dynamic> json) =>
      _$OrganizationElementFromJson(json);
}

@freezed
class Organization with _$Organization {
  const factory Organization({
    @JsonKey(name: '_id') String? id,
    String? name,
    String? orgImage,
    String? establishedDate,
    Location? location,
    String? address,
    String? createdAt,
    String? updatedAt,
  }) = _Organization;

  factory Organization.fromJson(Map<String, dynamic> json) =>
      _$OrganizationFromJson(json);
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
