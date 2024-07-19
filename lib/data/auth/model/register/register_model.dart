import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_model.freezed.dart';
part 'register_model.g.dart';

//! request ====>
RegisterReq registerReqFromJson(String str) =>
    RegisterReq.fromJson(json.decode(str));

String registerReqToJson(RegisterReq data) => json.encode(data.toJson());

@freezed
class RegisterReq with _$RegisterReq {
  const factory RegisterReq({
    String? name,
    String? phoneNumber,
    String? dateOfBirth,
    String? gender,
    String? profession,
    String? profileImage,
    String? address,
    LocationReq? location,
    String? otp,
  }) = _RegisterReq;

  factory RegisterReq.fromJson(Map<String, dynamic> json) =>
      _$RegisterReqFromJson(json);
}

@freezed
class LocationReq with _$LocationReq {
  const factory LocationReq({
    double? latitude,
    double? longitude,
  }) = _LocationReq;

  factory LocationReq.fromJson(Map<String, dynamic> json) =>
      _$LocationReqFromJson(json);
}

//! response =========>

RegisterRes registerResFromJson(String str) =>
    RegisterRes.fromJson(json.decode(str));

String registerResToJson(RegisterRes data) => json.encode(data.toJson());

@freezed
class RegisterRes with _$RegisterRes {
  const factory RegisterRes({
    bool? success,
    String? message,
    Body? body,
  }) = _RegisterRes;

  factory RegisterRes.fromJson(Map<String, dynamic> json) =>
      _$RegisterResFromJson(json);
}

@freezed
class Body with _$Body {
  const factory Body({
    String? token,
    User? user,
  }) = _Body;

  factory Body.fromJson(Map<String, dynamic> json) => _$BodyFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    String? name,
    String? phoneNumber,
    String? dateOfBirth,
    String? gender,
    String? profession,
    String? address,
    String? profileImage,
    LocationRes? location,
    String? id,
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
