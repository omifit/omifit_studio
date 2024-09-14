// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_plan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeletePlanResImpl _$$DeletePlanResImplFromJson(Map<String, dynamic> json) =>
    _$DeletePlanResImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      body: json['body'],
    );

Map<String, dynamic> _$$DeletePlanResImplToJson(_$DeletePlanResImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'body': instance.body,
    };
