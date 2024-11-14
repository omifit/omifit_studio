// To parse this JSON data, do
//
//     final searchUserRes = searchUserResFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_user_model.freezed.dart';
part 'search_user_model.g.dart';

//response
SearchUserRes searchUserResFromJson(String str) =>
    SearchUserRes.fromJson(json.decode(str));

String searchUserResToJson(SearchUserRes data) => json.encode(data.toJson());

@freezed
class SearchUserRes with _$SearchUserRes {
  const factory SearchUserRes({
    bool? success,
    String? message,
    Body? body,
  }) = _SearchUserRes;

  factory SearchUserRes.fromJson(Map<String, dynamic> json) =>
      _$SearchUserResFromJson(json);
}

@freezed
class Body with _$Body {
  const factory Body({
    List<User>? user,
  }) = _Body;

  factory Body.fromJson(Map<String, dynamic> json) => _$BodyFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    Location? location,
    @JsonKey(name: '_id') String? id,
    String? name,
    String? phoneNumber,
    String? dateOfBirth,
    String? gender,
    String? profession,
    String? address,
    String? profileImage,
    bool? isVerified,
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
