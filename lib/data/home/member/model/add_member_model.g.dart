// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_member_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddMemberReqImpl _$$AddMemberReqImplFromJson(Map<String, dynamic> json) =>
    _$AddMemberReqImpl(
      phoneNumber: json['phoneNumber'] as String?,
      name: json['name'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      profession: json['profession'] as String?,
      gender: json['gender'] as String?,
      profileImage: json['profileImage'] as String?,
    );

Map<String, dynamic> _$$AddMemberReqImplToJson(_$AddMemberReqImpl instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'name': instance.name,
      'dateOfBirth': instance.dateOfBirth,
      'profession': instance.profession,
      'gender': instance.gender,
      'profileImage': instance.profileImage,
    };

_$AddMemberResImpl _$$AddMemberResImplFromJson(Map<String, dynamic> json) =>
    _$AddMemberResImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      body: json['body'] == null
          ? null
          : Body.fromJson(json['body'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddMemberResImplToJson(_$AddMemberResImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'body': instance.body,
    };

_$BodyImpl _$$BodyImplFromJson(Map<String, dynamic> json) => _$BodyImpl(
      memberProfile: json['memberProfile'] == null
          ? null
          : MemberProfile.fromJson(
              json['memberProfile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BodyImplToJson(_$BodyImpl instance) =>
    <String, dynamic>{
      'memberProfile': instance.memberProfile,
    };

_$MemberProfileImpl _$$MemberProfileImplFromJson(Map<String, dynamic> json) =>
    _$MemberProfileImpl(
      user: json['user'] as String?,
      organization: json['organization'] as String?,
      status: json['status'] as String?,
      coach: json['coach'],
      id: json['id'] as String?,
      joiningDate: json['joiningDate'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$MemberProfileImplToJson(_$MemberProfileImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'organization': instance.organization,
      'status': instance.status,
      'coach': instance.coach,
      'id': instance.id,
      'joiningDate': instance.joiningDate,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
