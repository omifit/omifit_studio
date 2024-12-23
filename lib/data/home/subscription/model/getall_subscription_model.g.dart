// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getall_subscription_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetallSubscriptionResImpl _$$GetallSubscriptionResImplFromJson(
        Map<String, dynamic> json) =>
    _$GetallSubscriptionResImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      body: json['body'] == null
          ? null
          : Body.fromJson(json['body'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetallSubscriptionResImplToJson(
        _$GetallSubscriptionResImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'body': instance.body,
    };

_$BodyImpl _$$BodyImplFromJson(Map<String, dynamic> json) => _$BodyImpl(
      subscriptions: (json['subscriptions'] as List<dynamic>?)
          ?.map((e) => Subscription.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BodyImplToJson(_$BodyImpl instance) =>
    <String, dynamic>{
      'subscriptions': instance.subscriptions,
    };

_$SubscriptionImpl _$$SubscriptionImplFromJson(Map<String, dynamic> json) =>
    _$SubscriptionImpl(
      id: json['_id'] as String?,
      user: json['user'] as String?,
      organization: json['organization'] as String?,
      plan: json['plan'] as String?,
      coupon: json['coupon'],
      totalAmount: parseInteger(json['totalAmount']),
      paidAmount: parseInteger(json['paidAmount']),
      pendingAmount: parseInteger(json['pendingAmount']),
      remark: json['remark'] as String?,
      paymentForm: json['paymentForm'] as String?,
      membershipStartDate: json['membershipStartDate'] as String?,
      membershipEndDate: json['membershipEndDate'] as String?,
      isActivePlan: json['isActivePlan'] as bool?,
      isPaused: json['isPaused'] as bool?,
      isIncoming: json['isIncoming'] as bool?,
      isExpired: json['isExpired'] as bool?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$SubscriptionImplToJson(_$SubscriptionImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'user': instance.user,
      'organization': instance.organization,
      'plan': instance.plan,
      'coupon': instance.coupon,
      'totalAmount': parseInteger(instance.totalAmount),
      'paidAmount': parseInteger(instance.paidAmount),
      'pendingAmount': parseInteger(instance.pendingAmount),
      'remark': instance.remark,
      'paymentForm': instance.paymentForm,
      'membershipStartDate': instance.membershipStartDate,
      'membershipEndDate': instance.membershipEndDate,
      'isActivePlan': instance.isActivePlan,
      'isPaused': instance.isPaused,
      'isIncoming': instance.isIncoming,
      'isExpired': instance.isExpired,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
