// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_subscription_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditSubscriptionReqImpl _$$EditSubscriptionReqImplFromJson(
        Map<String, dynamic> json) =>
    _$EditSubscriptionReqImpl(
      editSubscriptionDetails: (json['editSubscriptionDetails']
              as List<dynamic>?)
          ?.map(
              (e) => EditSubscriptionDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EditSubscriptionReqImplToJson(
        _$EditSubscriptionReqImpl instance) =>
    <String, dynamic>{
      'editSubscriptionDetails': instance.editSubscriptionDetails,
    };

_$EditSubscriptionDetailImpl _$$EditSubscriptionDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$EditSubscriptionDetailImpl(
      subscriptionId: json['subscriptionId'] as String?,
      userId: json['userId'] as String?,
      planId: json['planId'] as String?,
      couponId: json['couponId'] as String?,
      totalAmount: (json['totalAmount'] as num?)?.toInt(),
      paidAmount: (json['paidAmount'] as num?)?.toInt(),
      pendingAmount: (json['pendingAmount'] as num?)?.toInt(),
      remark: json['remark'] as String?,
      paymentForm: json['paymentForm'] as String?,
      membershipStartDate: json['membershipStartDate'] as String?,
      membershipEndDate: json['membershipEndDate'] as String?,
    );

Map<String, dynamic> _$$EditSubscriptionDetailImplToJson(
        _$EditSubscriptionDetailImpl instance) =>
    <String, dynamic>{
      'subscriptionId': instance.subscriptionId,
      'userId': instance.userId,
      'planId': instance.planId,
      'couponId': instance.couponId,
      'totalAmount': instance.totalAmount,
      'paidAmount': instance.paidAmount,
      'pendingAmount': instance.pendingAmount,
      'remark': instance.remark,
      'paymentForm': instance.paymentForm,
      'membershipStartDate': instance.membershipStartDate,
      'membershipEndDate': instance.membershipEndDate,
    };

_$EditSubscriptionResImpl _$$EditSubscriptionResImplFromJson(
        Map<String, dynamic> json) =>
    _$EditSubscriptionResImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      body: json['body'],
    );

Map<String, dynamic> _$$EditSubscriptionResImplToJson(
        _$EditSubscriptionResImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'body': instance.body,
    };
