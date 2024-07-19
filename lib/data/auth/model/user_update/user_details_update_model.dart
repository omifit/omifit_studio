// To parse this JSON data, do
//
//     final userDetailsUpdateReq = userDetailsUpdateReqFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_details_update_model.freezed.dart';
part 'user_details_update_model.g.dart';

//! request =====>
UserDetailsUpdateReq userDetailsUpdateReqFromJson(String str) =>
    UserDetailsUpdateReq.fromJson(json.decode(str));

String userDetailsUpdateReqToJson(UserDetailsUpdateReq data) =>
    json.encode(data.toJson());

@freezed
class UserDetailsUpdateReq with _$UserDetailsUpdateReq {
  const factory UserDetailsUpdateReq({
    String? name,
    dynamic phoneNumber,
    String? dateOfBirth,
    String? gender,
    String? profession,
    String? address,
    Location? location,
    String? profileImage,
  }) = _UserDetailsUpdateReq;

  factory UserDetailsUpdateReq.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsUpdateReqFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location({
    double? latitude,
    double? longitude,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

//! response =====>
UserDetailsUpdateRes userDetailsUpdateResFromJson(String str) =>
    UserDetailsUpdateRes.fromJson(json.decode(str));

String userDetailsUpdateResToJson(UserDetailsUpdateRes data) =>
    json.encode(data.toJson());

@freezed
class UserDetailsUpdateRes with _$UserDetailsUpdateRes {
  const factory UserDetailsUpdateRes({
    bool? success,
    String? message,
    Body? body,
  }) = _UserDetailsUpdateRes;

  factory UserDetailsUpdateRes.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsUpdateResFromJson(json);
}

@freezed
class Body with _$Body {
  const factory Body({
    User? user,
  }) = _Body;

  factory Body.fromJson(Map<String, dynamic> json) => _$BodyFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    LocationRes? location,
    String? id,
    String? name,
    String? phoneNumber,
    String? dateOfBirth,
    String? gender,
    String? profession,
    String? address,
    String? profileImage,
    String? createdAt,
    String? updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class LocationRes with _$LocationRes {
  const factory LocationRes({
    String? type,
    List<double>? coordinates,
  }) = _LocationRes;

  factory LocationRes.fromJson(Map<String, dynamic> json) =>
      _$LocationResFromJson(json);
}
