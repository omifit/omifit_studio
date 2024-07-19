// To parse this JSON data, do
//
//     final userDetailsRes = userDetailsResFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_details_model.freezed.dart';
part 'user_details_model.g.dart';

//! response
UserDetailsRes userDetailsResFromJson(String str) =>
    UserDetailsRes.fromJson(json.decode(str));

String userDetailsResToJson(UserDetailsRes data) => json.encode(data.toJson());

@freezed
class UserDetailsRes with _$UserDetailsRes {
  const factory UserDetailsRes({
    bool? success,
    String? message,
    Body? body,
  }) = _UserDetailsRes;

  factory UserDetailsRes.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsResFromJson(json);
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
