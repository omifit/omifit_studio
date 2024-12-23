// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_coach_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetCoachResImpl _$$GetCoachResImplFromJson(Map<String, dynamic> json) =>
    _$GetCoachResImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      body: json['body'] == null
          ? null
          : Body.fromJson(json['body'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetCoachResImplToJson(_$GetCoachResImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'body': instance.body,
    };

_$BodyImpl _$$BodyImplFromJson(Map<String, dynamic> json) => _$BodyImpl(
      coaches: (json['coaches'] as List<dynamic>?)
          ?.map((e) => Coach.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BodyImplToJson(_$BodyImpl instance) =>
    <String, dynamic>{
      'coaches': instance.coaches,
    };

_$CoachImpl _$$CoachImplFromJson(Map<String, dynamic> json) => _$CoachImpl(
      id: json['_id'] as String?,
      organization: json['organization'] as String?,
      memberId: json['memberId'] as String?,
      employeeDetails: json['employeeId'] == null
          ? null
          : EmployeeDetails.fromJson(
              json['employeeId'] as Map<String, dynamic>),
      assignDate: json['assignDate'] as String?,
    );

Map<String, dynamic> _$$CoachImplToJson(_$CoachImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'organization': instance.organization,
      'memberId': instance.memberId,
      'employeeId': instance.employeeDetails,
      'assignDate': instance.assignDate,
    };

_$EmployeeIdImpl _$$EmployeeIdImplFromJson(Map<String, dynamic> json) =>
    _$EmployeeIdImpl(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      gender: json['gender'] as String?,
      profession: json['profession'] as String?,
      address: json['address'] as String?,
      profileImage: json['profileImage'] as String?,
      isVerified: json['isVerified'] as bool?,
    );

Map<String, dynamic> _$$EmployeeIdImplToJson(_$EmployeeIdImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'dateOfBirth': instance.dateOfBirth,
      'gender': instance.gender,
      'profession': instance.profession,
      'address': instance.address,
      'profileImage': instance.profileImage,
      'isVerified': instance.isVerified,
    };
