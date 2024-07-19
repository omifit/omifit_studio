// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_details_update_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDetailsUpdateReqImpl _$$UserDetailsUpdateReqImplFromJson(
        Map<String, dynamic> json) =>
    _$UserDetailsUpdateReqImpl(
      name: json['name'] as String?,
      phoneNumber: json['phoneNumber'],
      dateOfBirth: json['dateOfBirth'] as String?,
      gender: json['gender'] as String?,
      profession: json['profession'] as String?,
      address: json['address'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      profileImage: json['profileImage'] as String?,
    );

Map<String, dynamic> _$$UserDetailsUpdateReqImplToJson(
        _$UserDetailsUpdateReqImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'dateOfBirth': instance.dateOfBirth,
      'gender': instance.gender,
      'profession': instance.profession,
      'address': instance.address,
      'location': instance.location,
      'profileImage': instance.profileImage,
    };

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$UserDetailsUpdateResImpl _$$UserDetailsUpdateResImplFromJson(
        Map<String, dynamic> json) =>
    _$UserDetailsUpdateResImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      body: json['body'] == null
          ? null
          : Body.fromJson(json['body'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserDetailsUpdateResImplToJson(
        _$UserDetailsUpdateResImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'body': instance.body,
    };

_$BodyImpl _$$BodyImplFromJson(Map<String, dynamic> json) => _$BodyImpl(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BodyImplToJson(_$BodyImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      location: json['location'] == null
          ? null
          : LocationRes.fromJson(json['location'] as Map<String, dynamic>),
      id: json['id'] as String?,
      name: json['name'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      gender: json['gender'] as String?,
      profession: json['profession'] as String?,
      address: json['address'] as String?,
      profileImage: json['profileImage'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'location': instance.location,
      'id': instance.id,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'dateOfBirth': instance.dateOfBirth,
      'gender': instance.gender,
      'profession': instance.profession,
      'address': instance.address,
      'profileImage': instance.profileImage,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$LocationResImpl _$$LocationResImplFromJson(Map<String, dynamic> json) =>
    _$LocationResImpl(
      type: json['type'] as String?,
      coordinates: (json['coordinates'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$LocationResImplToJson(_$LocationResImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };
