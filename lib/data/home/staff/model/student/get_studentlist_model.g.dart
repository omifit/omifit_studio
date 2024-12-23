// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_studentlist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetStudentListResImpl _$$GetStudentListResImplFromJson(
        Map<String, dynamic> json) =>
    _$GetStudentListResImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      body: (json['body'] as List<dynamic>?)
          ?.map((e) => Body.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetStudentListResImplToJson(
        _$GetStudentListResImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'body': instance.body,
    };

_$BodyImpl _$$BodyImplFromJson(Map<String, dynamic> json) => _$BodyImpl(
      id: json['_id'] as String?,
      memberDetails: json['memberId'] == null
          ? null
          : MemberDetails.fromJson(json['memberId'] as Map<String, dynamic>),
      assignDate: json['assignDate'] as String?,
    );

Map<String, dynamic> _$$BodyImplToJson(_$BodyImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'memberId': instance.memberDetails,
      'assignDate': instance.assignDate,
    };

_$MemberDetailsImpl _$$MemberDetailsImplFromJson(Map<String, dynamic> json) =>
    _$MemberDetailsImpl(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      gender: json['gender'] as String?,
      profession: json['profession'] as String?,
      profileImage: json['profileImage'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$MemberDetailsImplToJson(_$MemberDetailsImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'dateOfBirth': instance.dateOfBirth,
      'gender': instance.gender,
      'profession': instance.profession,
      'profileImage': instance.profileImage,
      'status': instance.status,
    };
