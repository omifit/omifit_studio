// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_subscription_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CancelSubscriptionResImpl _$$CancelSubscriptionResImplFromJson(
        Map<String, dynamic> json) =>
    _$CancelSubscriptionResImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      body: json['body'],
    );

Map<String, dynamic> _$$CancelSubscriptionResImplToJson(
        _$CancelSubscriptionResImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'body': instance.body,
    };
