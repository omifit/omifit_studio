// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_student_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddStudentReqImpl _$$AddStudentReqImplFromJson(Map<String, dynamic> json) =>
    _$AddStudentReqImpl(
      studentId: json['studentId'] as String?,
      teacherId: json['teacherId'] as String?,
      assignDate: json['assignDate'] == null
          ? null
          : DateTime.parse(json['assignDate'] as String),
    );

Map<String, dynamic> _$$AddStudentReqImplToJson(_$AddStudentReqImpl instance) =>
    <String, dynamic>{
      'studentId': instance.studentId,
      'teacherId': instance.teacherId,
      'assignDate': instance.assignDate?.toIso8601String(),
    };

_$AddStudentResImpl _$$AddStudentResImplFromJson(Map<String, dynamic> json) =>
    _$AddStudentResImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      body: json['body'] == null
          ? null
          : Body.fromJson(json['body'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddStudentResImplToJson(_$AddStudentResImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'body': instance.body,
    };

_$BodyImpl _$$BodyImplFromJson(Map<String, dynamic> json) => _$BodyImpl(
      organization: json['organization'] as String?,
      memberId: json['memberId'] as String?,
      employeeId: json['employeeId'] as String?,
      id: json['id'] as String?,
      assignDate: json['assignDate'] as String?,
    );

Map<String, dynamic> _$$BodyImplToJson(_$BodyImpl instance) =>
    <String, dynamic>{
      'organization': instance.organization,
      'memberId': instance.memberId,
      'employeeId': instance.employeeId,
      'id': instance.id,
      'assignDate': instance.assignDate,
    };
