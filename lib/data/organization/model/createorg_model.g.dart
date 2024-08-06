// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'createorg_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateorgReqImpl _$$CreateorgReqImplFromJson(Map<String, dynamic> json) =>
    _$CreateorgReqImpl(
      name: json['name'] as String?,
      establishedDate: json['establishedDate'] as String?,
      organizationImage: json['organizationImage'] as String?,
      address: json['address'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$CreateorgReqImplToJson(_$CreateorgReqImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'establishedDate': instance.establishedDate,
      'organizationImage': instance.organizationImage,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$CreateorgResImpl _$$CreateorgResImplFromJson(Map<String, dynamic> json) =>
    _$CreateorgResImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      body: json['body'] == null
          ? null
          : Body.fromJson(json['body'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateorgResImplToJson(_$CreateorgResImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'body': instance.body,
    };

_$BodyImpl _$$BodyImplFromJson(Map<String, dynamic> json) => _$BodyImpl(
      name: json['name'] as String?,
      orgImage: json['orgImage'] as String?,
      establishedDate: json['establishedDate'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      address: json['address'] as String?,
      id: json['id'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$BodyImplToJson(_$BodyImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'orgImage': instance.orgImage,
      'establishedDate': instance.establishedDate,
      'location': instance.location,
      'address': instance.address,
      'id': instance.id,
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
