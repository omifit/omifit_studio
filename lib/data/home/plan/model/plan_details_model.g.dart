// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlanDetailsResImpl _$$PlanDetailsResImplFromJson(Map<String, dynamic> json) =>
    _$PlanDetailsResImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      body: json['body'] == null
          ? null
          : Body.fromJson(json['body'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PlanDetailsResImplToJson(
        _$PlanDetailsResImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'body': instance.body,
    };

_$BodyImpl _$$BodyImplFromJson(Map<String, dynamic> json) => _$BodyImpl(
      organizationPlan: json['organizationPlan'] == null
          ? null
          : OrganizationPlan.fromJson(
              json['organizationPlan'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BodyImplToJson(_$BodyImpl instance) =>
    <String, dynamic>{
      'organizationPlan': instance.organizationPlan,
    };

_$OrganizationPlanImpl _$$OrganizationPlanImplFromJson(
        Map<String, dynamic> json) =>
    _$OrganizationPlanImpl(
      duration: json['duration'] == null
          ? null
          : Duration.fromJson(json['duration'] as Map<String, dynamic>),
      id: json['_id'] as String?,
      organization: json['organization'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      price: parseInteger(json['price']),
      fakeAmount: parseInteger(json['fakeAmount']),
      isActive: json['isActive'] as bool?,
      gst: parseDouble(json['gst']),
      gstPercentage: parseDouble(json['gstPercentage']),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      v: (json['v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$OrganizationPlanImplToJson(
        _$OrganizationPlanImpl instance) =>
    <String, dynamic>{
      'duration': instance.duration,
      '_id': instance.id,
      'organization': instance.organization,
      'name': instance.name,
      'description': instance.description,
      'price': parseInteger(instance.price),
      'fakeAmount': parseInteger(instance.fakeAmount),
      'isActive': instance.isActive,
      'gst': parseDouble(instance.gst),
      'gstPercentage': parseDouble(instance.gstPercentage),
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'v': instance.v,
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
