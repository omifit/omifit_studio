// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_memberlist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetMemberListReqImpl _$$GetMemberListReqImplFromJson(
        Map<String, dynamic> json) =>
    _$GetMemberListReqImpl(
      name: json['name'] as String?,
      number: json['number'] as String?,
      status: json['status'] as String?,
      nameORNumber: json['nameORNumber'] as String?,
      joiningDate: json['joiningDate'] as String?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      page: (json['page'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$GetMemberListReqImplToJson(
        _$GetMemberListReqImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'number': instance.number,
      'status': instance.status,
      'nameORNumber': instance.nameORNumber,
      'joiningDate': instance.joiningDate,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'page': instance.page,
      'limit': instance.limit,
    };

_$GetMemberListResImpl _$$GetMemberListResImplFromJson(
        Map<String, dynamic> json) =>
    _$GetMemberListResImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      body: json['body'] == null
          ? null
          : Body.fromJson(json['body'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetMemberListResImplToJson(
        _$GetMemberListResImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'body': instance.body,
    };

_$BodyImpl _$$BodyImplFromJson(Map<String, dynamic> json) => _$BodyImpl(
      organizationMembers: (json['organizationMembers'] as List<dynamic>?)
          ?.map((e) => OrganizationMember.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BodyImplToJson(_$BodyImpl instance) =>
    <String, dynamic>{
      'organizationMembers': instance.organizationMembers,
      'pagination': instance.pagination,
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
      coach: json['coach'],
      joiningDate: json['joiningDate'] as String?,
    );

Map<String, dynamic> _$$OrganizationMemberImplToJson(
        _$OrganizationMemberImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'user': instance.user,
      'organization': instance.organization,
      'status': instance.status,
      'coach': instance.coach,
      'joiningDate': instance.joiningDate,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      gender: json['gender'] as String?,
      profession: json['profession'] as String?,
      profileImage: json['profileImage'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'dateOfBirth': instance.dateOfBirth,
      'gender': instance.gender,
      'profession': instance.profession,
      'profileImage': instance.profileImage,
    };

_$PaginationImpl _$$PaginationImplFromJson(Map<String, dynamic> json) =>
    _$PaginationImpl(
      totalCount: (json['totalCount'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      currentPage: (json['currentPage'] as num?)?.toInt(),
      pageSize: (json['pageSize'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PaginationImplToJson(_$PaginationImpl instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'totalPages': instance.totalPages,
      'currentPage': instance.currentPage,
      'pageSize': instance.pageSize,
    };
