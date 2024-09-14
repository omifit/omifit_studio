// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist/create_playlist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatePlaylistReqImpl _$$CreatePlaylistReqImplFromJson(
        Map<String, dynamic> json) =>
    _$CreatePlaylistReqImpl(
      title: json['title'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      qrCode: json['qrCode'] as String?,
    );

Map<String, dynamic> _$$CreatePlaylistReqImplToJson(
        _$CreatePlaylistReqImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'qrCode': instance.qrCode,
    };

_$CreatePlaylistResImpl _$$CreatePlaylistResImplFromJson(
        Map<String, dynamic> json) =>
    _$CreatePlaylistResImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      body: json['body'],
    );

Map<String, dynamic> _$$CreatePlaylistResImplToJson(
        _$CreatePlaylistResImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'body': instance.body,
    };
