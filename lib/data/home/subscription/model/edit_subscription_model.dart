import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_subscription_model.freezed.dart';
part 'edit_subscription_model.g.dart';

// request
EditSubscriptionReq editSubscriptionReqFromJson(String str) =>
    EditSubscriptionReq.fromJson(json.decode(str));

String editSubscriptionReqToJson(EditSubscriptionReq data) =>
    json.encode(data.toJson());

@freezed
class EditSubscriptionReq with _$EditSubscriptionReq {
  const factory EditSubscriptionReq({
    List<EditSubscriptionDetail>? editSubscriptionDetails,
  }) = _EditSubscriptionReq;

  factory EditSubscriptionReq.fromJson(Map<String, dynamic> json) =>
      _$EditSubscriptionReqFromJson(json);
}

@freezed
class EditSubscriptionDetail with _$EditSubscriptionDetail {
  const factory EditSubscriptionDetail({
    String? subscriptionId,
    String? userId,
    String? planId,
    String? couponId,
    int? totalAmount,
    int? paidAmount,
    int? pendingAmount,
    String? remark,
    String? paymentForm,
    String? membershipStartDate,
    String? membershipEndDate,
  }) = _EditSubscriptionDetail;

  factory EditSubscriptionDetail.fromJson(Map<String, dynamic> json) =>
      _$EditSubscriptionDetailFromJson(json);
}

// response
EditSubscriptionRes editSubscriptionResFromJson(String str) =>
    EditSubscriptionRes.fromJson(json.decode(str));
String editSubscriptionResToJson(EditSubscriptionRes data) =>
    json.encode(data.toJson());

@freezed
class EditSubscriptionRes with _$EditSubscriptionRes {
  const factory EditSubscriptionRes({
    bool? success,
    String? message,
    dynamic body,
  }) = _EditSubscriptionRes;

  factory EditSubscriptionRes.fromJson(Map<String, dynamic> json) =>
      _$EditSubscriptionResFromJson(json);
}
