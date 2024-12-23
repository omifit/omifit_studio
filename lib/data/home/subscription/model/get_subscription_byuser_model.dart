import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:omifit_studio/utils/json_parse.dart';

part 'get_subscription_byuser_model.freezed.dart';
part 'get_subscription_byuser_model.g.dart';

// response
GetallsubscriptionByUserRes getallsubscriptionByUserResFromJson(String str) =>
    GetallsubscriptionByUserRes.fromJson(json.decode(str));

String getallsubscriptionByUserResToJson(GetallsubscriptionByUserRes data) =>
    json.encode(data.toJson());

@freezed
class GetallsubscriptionByUserRes with _$GetallsubscriptionByUserRes {
  const factory GetallsubscriptionByUserRes({
    bool? success,
    String? message,
    Body? body,
  }) = _GetallsubscriptionByUserRes;

  factory GetallsubscriptionByUserRes.fromJson(Map<String, dynamic> json) =>
      _$GetallsubscriptionByUserResFromJson(json);
}

@freezed
class Body with _$Body {
  const factory Body({
    List<Subscription>? subscriptions,
  }) = _Body;

  factory Body.fromJson(Map<String, dynamic> json) => _$BodyFromJson(json);
}

@freezed
class Subscription with _$Subscription {
  const factory Subscription({
    @JsonKey(name: '_id') String? id,
    User? user,
    String? organization,
    Plan? plan,
    @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? totalAmount,
    @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? paidAmount,
    @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? pendingAmount,
    String? remark,
    String? paymentForm,
    String? membershipStartDate,
    String? membershipEndDate,
    String? status,
    String? createdAt,
    String? updatedAt,
  }) = _Subscription;

  factory Subscription.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionFromJson(json);
}

@freezed
class Plan with _$Plan {
  const factory Plan({
    Durationres? duration,
    @JsonKey(name: '_id') String? id,
    String? organization,
    String? name,
    String? description,
    @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? price,
    @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? fakeAmount,
    bool? isActive,
    String? createdAt,
    String? updatedAt,
  }) = _Plan;

  factory Plan.fromJson(Map<String, dynamic> json) => _$PlanFromJson(json);
}

@freezed
class Durationres with _$Durationres {
  const factory Durationres({
    @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? value,
    String? unit,
    @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? numberOfDays,
  }) = _Durationres;

  factory Durationres.fromJson(Map<String, dynamic> json) =>
      _$DurationresFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: '_id') String? id,
    String? name,
    String? phoneNumber,
    String? dateOfBirth,
    String? gender,
    String? profession,
    String? address,
    String? profileImage,
    bool? isVerified,
    String? createdAt,
    String? updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
