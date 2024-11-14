import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:omifit/utils/json_parse.dart';

part 'getall_subscription_model.freezed.dart';
part 'getall_subscription_model.g.dart';

// response
GetallSubscriptionRes getallSubscriptionResFromJson(String str) =>
    GetallSubscriptionRes.fromJson(json.decode(str));

String getallSubscriptionResToJson(GetallSubscriptionRes data) =>
    json.encode(data.toJson());

@freezed
class GetallSubscriptionRes with _$GetallSubscriptionRes {
  const factory GetallSubscriptionRes({
    bool? success,
    String? message,
    Body? body,
  }) = _GetallSubscriptionRes;

  factory GetallSubscriptionRes.fromJson(Map<String, dynamic> json) =>
      _$GetallSubscriptionResFromJson(json);
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
    String? id,
    String? user,
    String? organization,
    String? plan,
    dynamic coupon,
    @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? totalAmount,
    @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? paidAmount,
    @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? pendingAmount,
    String? remark,
    String? paymentForm,
    String? membershipStartDate,
    String? membershipEndDate,
    bool? isActivePlan,
    bool? isPaused,
    bool? isIncoming,
    bool? isExpired,
    String? createdAt,
    String? updatedAt,
  }) = _Subscription;

  factory Subscription.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionFromJson(json);
}
