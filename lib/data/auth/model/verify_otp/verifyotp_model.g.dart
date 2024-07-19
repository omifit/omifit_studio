// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verifyotp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyOtpReqImpl _$$VerifyOtpReqImplFromJson(Map<String, dynamic> json) =>
    _$VerifyOtpReqImpl(
      phoneNumber: json['phoneNumber'] as String?,
      otp: json['otp'] as String?,
    );

Map<String, dynamic> _$$VerifyOtpReqImplToJson(_$VerifyOtpReqImpl instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'otp': instance.otp,
    };

_$VerifyOtpResImpl _$$VerifyOtpResImplFromJson(Map<String, dynamic> json) =>
    _$VerifyOtpResImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      body: json['body'] == null
          ? null
          : Body.fromJson(json['body'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VerifyOtpResImplToJson(_$VerifyOtpResImpl instance) =>
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
