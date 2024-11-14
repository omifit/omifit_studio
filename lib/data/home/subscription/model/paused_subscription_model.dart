import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'paused_subscription_model.freezed.dart';
part 'paused_subscription_model.g.dart';

// response
PausedSubscriptionRes pausedSubscriptionResFromJson(String str) =>
    PausedSubscriptionRes.fromJson(json.decode(str));

String pausedSubscriptionResToJson(PausedSubscriptionRes data) =>
    json.encode(data.toJson());

@freezed
class PausedSubscriptionRes with _$PausedSubscriptionRes {
  const factory PausedSubscriptionRes({
    bool? success,
    String? message,
    dynamic body,
  }) = _PausedSubscriptionRes;

  factory PausedSubscriptionRes.fromJson(Map<String, dynamic> json) =>
      _$PausedSubscriptionResFromJson(json);
}
