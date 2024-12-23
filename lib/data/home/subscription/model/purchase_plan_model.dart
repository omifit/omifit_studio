import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'purchase_plan_model.freezed.dart';
part 'purchase_plan_model.g.dart';

// request
PurchasePlanReq purchasePlanReqFromJson(String str) =>
    PurchasePlanReq.fromJson(json.decode(str));

String purchasePlanReqToJson(PurchasePlanReq data) =>
    json.encode(data.toJson());

@freezed
class PurchasePlanReq with _$PurchasePlanReq {
  const factory PurchasePlanReq({
    List<SubscriptionDetail>? subscriptionDetails,
  }) = _PurchasePlanReq;

  factory PurchasePlanReq.fromJson(Map<String, dynamic> json) =>
      _$PurchasePlanReqFromJson(json);
}

@freezed
class SubscriptionDetail with _$SubscriptionDetail {
  const factory SubscriptionDetail({
    String? userId,
    String? planId,
    String? couponId,
    int? totalAmount,
    int? paidAmount,
    String? remark,
    String? paymentForm,
    DateTime? membershipStartDate,
    DateTime? membershipEndDate,
  }) = _SubscriptionDetail;

  factory SubscriptionDetail.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionDetailFromJson(json);
}

// response

PurchasePlanRes purchasePlanResFromJson(String str) =>
    PurchasePlanRes.fromJson(json.decode(str));

String purchasePlanResToJson(PurchasePlanRes data) =>
    json.encode(data.toJson());

@freezed
class PurchasePlanRes with _$PurchasePlanRes {
  const factory PurchasePlanRes({
    bool? success,
    String? message,
    dynamic body,
  }) = _PurchasePlanRes;

  factory PurchasePlanRes.fromJson(Map<String, dynamic> json) =>
      _$PurchasePlanResFromJson(json);
}

// using this model in plan-picker page for local data store

@freezed
class SelectedPlan with _$SelectedPlan {
  const factory SelectedPlan({
    String? userId,
    String? planId,
    String? planName,
    String? couponId,
    int? orginalPlanAmount,
    int? discountAmount,
    int? paidAmount,
    int? dueAmount,
    List<PaymentMethod>? paymentMethod,
    DateTime? membershipStartDate,
    DateTime? membershipEndDate,
    int? durationValue,
    String? durationUnit,
  }) = _SelectedPlan;

  factory SelectedPlan.fromJson(Map<String, dynamic> json) =>
      _$SelectedPlanFromJson(json);
}

@freezed
class PaymentMethod with _$PaymentMethod {
  const factory PaymentMethod({
    int? amount,
    String? type,
  }) = _PaymentMethod;

  factory PaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodFromJson(json);
}
