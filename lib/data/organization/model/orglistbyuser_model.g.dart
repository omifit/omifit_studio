// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orglistbyuser_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrglistbyuserResImpl _$$OrglistbyuserResImplFromJson(
        Map<String, dynamic> json) =>
    _$OrglistbyuserResImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      body: json['body'] == null
          ? null
          : Body.fromJson(json['body'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrglistbyuserResImplToJson(
        _$OrglistbyuserResImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'body': instance.body,
    };

_$BodyImpl _$$BodyImplFromJson(Map<String, dynamic> json) => _$BodyImpl(
      organizations: (json['organizations'] as List<dynamic>?)
          ?.map((e) => OrganizationElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BodyImplToJson(_$BodyImpl instance) =>
    <String, dynamic>{
      'organizations': instance.organizations,
    };

_$OrganizationElementImpl _$$OrganizationElementImplFromJson(
        Map<String, dynamic> json) =>
    _$OrganizationElementImpl(
      id: json['id'] as String?,
      user: json['user'] as String?,
      organization: json['organization'] == null
          ? null
          : Organization.fromJson(json['organization'] as Map<String, dynamic>),
      role: json['role'] as String?,
      membershipPlans: json['membershipPlans'] as List<dynamic>?,
      memberPhoneNumber: json['memberPhoneNumber'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$OrganizationElementImplToJson(
        _$OrganizationElementImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'organization': instance.organization,
      'role': instance.role,
      'membershipPlans': instance.membershipPlans,
      'memberPhoneNumber': instance.memberPhoneNumber,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$OrganizationImpl _$$OrganizationImplFromJson(Map<String, dynamic> json) =>
    _$OrganizationImpl(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      orgImage: json['orgImage'] as String?,
      establishedDate: json['establishedDate'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      address: json['address'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$OrganizationImplToJson(_$OrganizationImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'orgImage': instance.orgImage,
      'establishedDate': instance.establishedDate,
      'location': instance.location,
      'address': instance.address,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
      type: json['type'] as String?,
      coordinates: (json['coordinates'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };
