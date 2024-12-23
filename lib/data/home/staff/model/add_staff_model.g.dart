// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_staff_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddStaffReqImpl _$$AddStaffReqImplFromJson(Map<String, dynamic> json) =>
    _$AddStaffReqImpl(
      phoneNumber: json['phoneNumber'] as String?,
      name: json['name'] as String?,
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
      profession: json['profession'] as String?,
      gender: json['gender'] as String?,
      profileImage: json['profileImage'] as String?,
    );

Map<String, dynamic> _$$AddStaffReqImplToJson(_$AddStaffReqImpl instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'name': instance.name,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'profession': instance.profession,
      'gender': instance.gender,
      'profileImage': instance.profileImage,
    };

_$AddStaffResImpl _$$AddStaffResImplFromJson(Map<String, dynamic> json) =>
    _$AddStaffResImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      body: json['body'],
    );

Map<String, dynamic> _$$AddStaffResImplToJson(_$AddStaffResImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'body': instance.body,
    };
