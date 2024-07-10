import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

//! request
LoginReq loginReqFromJson(String str) => LoginReq.fromJson(json.decode(str));

String loginReqToJson(LoginReq data) => json.encode(data.toJson());

@freezed
class LoginReq with _$LoginReq {
  const factory LoginReq({
    String? phoneNumber,
    String? otp,
  }) = _LoginReq;

  factory LoginReq.fromJson(Map<String, dynamic> json) =>
      _$LoginReqFromJson(json);
}

//! response

LoginRes loginResFromJson(String str) => LoginRes.fromJson(json.decode(str));

String loginResToJson(LoginRes data) => json.encode(data.toJson());

@freezed
class LoginRes with _$LoginRes {
  const factory LoginRes({
    bool? success,
    String? message,
    Body? body,
  }) = _LoginRes;

  factory LoginRes.fromJson(Map<String, dynamic> json) =>
      _$LoginResFromJson(json);
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
    Location? location,
    @JsonKey(name: "_id") String? id,
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
class Location with _$Location {
  const factory Location({
    String? type,
    List<double>? coordinates,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
