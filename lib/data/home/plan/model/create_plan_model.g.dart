// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_plan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatePlanReqImpl _$$CreatePlanReqImplFromJson(Map<String, dynamic> json) =>
    _$CreatePlanReqImpl(
      name: json['name'] as String?,
      description: json['description'] as String?,
      price: parseInteger(json['price']),
      fakeAmount: parseInteger(json['fakeAmount']),
      duration: json['duration'] == null
          ? null
          : Duration.fromJson(json['duration'] as Map<String, dynamic>),
      isActive: json['isActive'] as bool?,
      gst: parseDouble(json['gst']),
      gstPercentage: parseDouble(json['gstPercentage']),
    );

Map<String, dynamic> _$$CreatePlanReqImplToJson(_$CreatePlanReqImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'price': parseInteger(instance.price),
      'fakeAmount': parseInteger(instance.fakeAmount),
      'duration': instance.duration,
      'isActive': instance.isActive,
      'gst': parseDouble(instance.gst),
      'gstPercentage': parseDouble(instance.gstPercentage),
    };

_$DurationImpl _$$DurationImplFromJson(Map<String, dynamic> json) =>
    _$DurationImpl(
      value: (json['value'] as num?)?.toInt(),
      unit: json['unit'] as String?,
      numberOfDays: (json['numberOfDays'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DurationImplToJson(_$DurationImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'unit': instance.unit,
      'numberOfDays': instance.numberOfDays,
    };

_$CreatePlanResImpl _$$CreatePlanResImplFromJson(Map<String, dynamic> json) =>
    _$CreatePlanResImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      body: json['body'],
    );

Map<String, dynamic> _$$CreatePlanResImplToJson(_$CreatePlanResImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'body': instance.body,
    };
