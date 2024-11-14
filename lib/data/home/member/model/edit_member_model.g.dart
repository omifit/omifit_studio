// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_member_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditMemberReqImpl _$$EditMemberReqImplFromJson(Map<String, dynamic> json) =>
    _$EditMemberReqImpl(
      userId: json['userId'] as String?,
      otp: json['otp'] as String?,
      name: json['name'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
      gender: json['gender'] as String?,
      profession: json['profession'] as String?,
      address: json['address'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      profileImage: json['profileImage'] as String?,
      joiningDate: json['joiningDate'] as String?,
    );

Map<String, dynamic> _$$EditMemberReqImplToJson(_$EditMemberReqImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'otp': instance.otp,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'gender': instance.gender,
      'profession': instance.profession,
      'address': instance.address,
      'location': instance.location,
      'profileImage': instance.profileImage,
      'joiningDate': instance.joiningDate,
    };

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) =>
    <String, dynamic>{
      'longitude': instance.longitude,
      'latitude': instance.latitude,
    };

_$EditMemberResImpl _$$EditMemberResImplFromJson(Map<String, dynamic> json) =>
    _$EditMemberResImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$EditMemberResImplToJson(_$EditMemberResImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
    };
