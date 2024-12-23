// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_staff_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetStaffDetailsResImpl _$$GetStaffDetailsResImplFromJson(
        Map<String, dynamic> json) =>
    _$GetStaffDetailsResImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      body: json['body'] == null
          ? null
          : Body.fromJson(json['body'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetStaffDetailsResImplToJson(
        _$GetStaffDetailsResImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'body': instance.body,
    };

_$BodyImpl _$$BodyImplFromJson(Map<String, dynamic> json) => _$BodyImpl(
      organizationMember: json['organizationMember'] == null
          ? null
          : OrganizationMember.fromJson(
              json['organizationMember'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BodyImplToJson(_$BodyImpl instance) =>
    <String, dynamic>{
      'organizationMember': instance.organizationMember,
    };

_$OrganizationMemberImpl _$$OrganizationMemberImplFromJson(
        Map<String, dynamic> json) =>
    _$OrganizationMemberImpl(
      id: json['_id'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      organization: json['organization'] as String?,
      status: json['status'] as String?,
      totalStudents: (json['totalStudents'] as num?)?.toInt(),
      joiningDate: json['joiningDate'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$OrganizationMemberImplToJson(
        _$OrganizationMemberImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'user': instance.user,
      'organization': instance.organization,
      'status': instance.status,
      'totalStudents': instance.totalStudents,
      'joiningDate': instance.joiningDate,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      gender: json['gender'] as String?,
      profession: json['profession'] as String?,
      address: json['address'] as String?,
      profileImage: json['profileImage'] as String?,
      isVerified: json['isVerified'] as bool?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
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
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
