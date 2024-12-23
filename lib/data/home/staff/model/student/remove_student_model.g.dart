// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_student_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RemoveStudentReqImpl _$$RemoveStudentReqImplFromJson(
        Map<String, dynamic> json) =>
    _$RemoveStudentReqImpl(
      studentId: json['studentId'] as String?,
      teacherId: json['teacherId'] as String?,
    );

Map<String, dynamic> _$$RemoveStudentReqImplToJson(
        _$RemoveStudentReqImpl instance) =>
    <String, dynamic>{
      'studentId': instance.studentId,
      'teacherId': instance.teacherId,
    };

_$RemoveStudentResImpl _$$RemoveStudentResImplFromJson(
        Map<String, dynamic> json) =>
    _$RemoveStudentResImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$RemoveStudentResImplToJson(
        _$RemoveStudentResImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
    };
