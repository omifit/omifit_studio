// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_plan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PurchasePlanReqImpl _$$PurchasePlanReqImplFromJson(
        Map<String, dynamic> json) =>
    _$PurchasePlanReqImpl(
      subscriptionDetails: (json['subscriptionDetails'] as List<dynamic>?)
          ?.map((e) => SubscriptionDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PurchasePlanReqImplToJson(
        _$PurchasePlanReqImpl instance) =>
    <String, dynamic>{
      'subscriptionDetails': instance.subscriptionDetails,
    };

_$SubscriptionDetailImpl _$$SubscriptionDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscriptionDetailImpl(
      userId: json['userId'] as String?,
      planId: json['planId'] as String?,
      couponId: json['couponId'] as String?,
      totalAmount: (json['totalAmount'] as num?)?.toInt(),
      paidAmount: (json['paidAmount'] as num?)?.toInt(),
      remark: json['remark'] as String?,
      paymentForm: json['paymentForm'] as String?,
      membershipStartDate: json['membershipStartDate'] == null
          ? null
          : DateTime.parse(json['membershipStartDate'] as String),
      membershipEndDate: json['membershipEndDate'] == null
          ? null
          : DateTime.parse(json['membershipEndDate'] as String),
    );

Map<String, dynamic> _$$SubscriptionDetailImplToJson(
        _$SubscriptionDetailImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'planId': instance.planId,
      'couponId': instance.couponId,
      'totalAmount': instance.totalAmount,
      'paidAmount': instance.paidAmount,
      'remark': instance.remark,
      'paymentForm': instance.paymentForm,
      'membershipStartDate': instance.membershipStartDate?.toIso8601String(),
      'membershipEndDate': instance.membershipEndDate?.toIso8601String(),
    };

_$PurchasePlanResImpl _$$PurchasePlanResImplFromJson(
        Map<String, dynamic> json) =>
    _$PurchasePlanResImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      body: json['body'],
    );

Map<String, dynamic> _$$PurchasePlanResImplToJson(
        _$PurchasePlanResImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'body': instance.body,
    };

_$SelectedPlanImpl _$$SelectedPlanImplFromJson(Map<String, dynamic> json) =>
    _$SelectedPlanImpl(
      userId: json['userId'] as String?,
      planId: json['planId'] as String?,
      planName: json['planName'] as String?,
      couponId: json['couponId'] as String?,
      totalAmount: (json['totalAmount'] as num?)?.toInt(),
      paidAmount: (json['paidAmount'] as num?)?.toInt(),
      dueAmount: (json['dueAmount'] as num?)?.toInt(),
      paymentForm: json['paymentForm'] as String?,
      membershipStartDate: json['membershipStartDate'] == null
          ? null
          : DateTime.parse(json['membershipStartDate'] as String),
      membershipEndDate: json['membershipEndDate'] == null
          ? null
          : DateTime.parse(json['membershipEndDate'] as String),
      durationValue: (json['durationValue'] as num?)?.toInt(),
      durationUnit: json['durationUnit'] as String?,
    );

Map<String, dynamic> _$$SelectedPlanImplToJson(_$SelectedPlanImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'planId': instance.planId,
      'planName': instance.planName,
      'couponId': instance.couponId,
      'totalAmount': instance.totalAmount,
      'paidAmount': instance.paidAmount,
      'dueAmount': instance.dueAmount,
      'paymentForm': instance.paymentForm,
      'membershipStartDate': instance.membershipStartDate?.toIso8601String(),
      'membershipEndDate': instance.membershipEndDate?.toIso8601String(),
      'durationValue': instance.durationValue,
      'durationUnit': instance.durationUnit,
    };
