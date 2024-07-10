// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDetailsResImpl _$$UserDetailsResImplFromJson(Map<String, dynamic> json) =>
    _$UserDetailsResImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      body: json['body'] == null
          ? null
          : Body.fromJson(json['body'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserDetailsResImplToJson(
        _$UserDetailsResImpl instance) =>
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
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      id: json['_id'] as String?,
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
      '_id': instance.id,
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
