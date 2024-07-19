// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sendotp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendOtpReqImpl _$$SendOtpReqImplFromJson(Map<String, dynamic> json) =>
    _$SendOtpReqImpl(
      phoneNumber: json['phoneNumber'] as String?,
      forOldUser: json['forOldUser'] as bool?,
      forNewUser: json['forNewUser'] as bool?,
    );

Map<String, dynamic> _$$SendOtpReqImplToJson(_$SendOtpReqImpl instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'forOldUser': instance.forOldUser,
      'forNewUser': instance.forNewUser,
    };

_$SendOtpResImpl _$$SendOtpResImplFromJson(Map<String, dynamic> json) =>
    _$SendOtpResImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      body: json['body'] == null
          ? null
          : Body.fromJson(json['body'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SendOtpResImplToJson(_$SendOtpResImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'body': instance.body,
    };

_$BodyImpl _$$BodyImplFromJson(Map<String, dynamic> json) => _$BodyImpl(
      phoneNumber: json['phoneNumber'] as String?,
    );

Map<String, dynamic> _$$BodyImplToJson(_$BodyImpl instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
    };
