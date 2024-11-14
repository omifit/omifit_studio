// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paused_subscription_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PausedSubscriptionResImpl _$$PausedSubscriptionResImplFromJson(
        Map<String, dynamic> json) =>
    _$PausedSubscriptionResImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      body: json['body'],
    );

Map<String, dynamic> _$$PausedSubscriptionResImplToJson(
        _$PausedSubscriptionResImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'body': instance.body,
    };
