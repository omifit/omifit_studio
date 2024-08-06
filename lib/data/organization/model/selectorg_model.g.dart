// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selectorg_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SelectorgReqImpl _$$SelectorgReqImplFromJson(Map<String, dynamic> json) =>
    _$SelectorgReqImpl(
      organizationId: json['organizationId'] as String?,
    );

Map<String, dynamic> _$$SelectorgReqImplToJson(_$SelectorgReqImpl instance) =>
    <String, dynamic>{
      'organizationId': instance.organizationId,
    };

_$SelectorgResImpl _$$SelectorgResImplFromJson(Map<String, dynamic> json) =>
    _$SelectorgResImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      body: json['body'] == null
          ? null
          : Body.fromJson(json['body'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SelectorgResImplToJson(_$SelectorgResImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'body': instance.body,
    };

_$BodyImpl _$$BodyImplFromJson(Map<String, dynamic> json) => _$BodyImpl(
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$BodyImplToJson(_$BodyImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
    };
