import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'cancel_subscription_model.freezed.dart';
part 'cancel_subscription_model.g.dart';

//reponse
CancelSubscriptionRes cancelSubscriptionResFromJson(String str) =>
    CancelSubscriptionRes.fromJson(json.decode(str));

String cancelSubscriptionResToJson(CancelSubscriptionRes data) =>
    json.encode(data.toJson());

@freezed
class CancelSubscriptionRes with _$CancelSubscriptionRes {
  const factory CancelSubscriptionRes({
    bool? success,
    String? message,
    dynamic body,
  }) = _CancelSubscriptionRes;

  factory CancelSubscriptionRes.fromJson(Map<String, dynamic> json) =>
      _$CancelSubscriptionResFromJson(json);
}
