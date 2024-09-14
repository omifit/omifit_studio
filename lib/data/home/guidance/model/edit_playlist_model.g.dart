// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist/edit_playlist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditPlaylistReqImpl _$$EditPlaylistReqImplFromJson(
        Map<String, dynamic> json) =>
    _$EditPlaylistReqImpl(
      title: json['title'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      qrCode: json['qrCode'] as String?,
      playlistId: json['playlistId'] as String?,
    );

Map<String, dynamic> _$$EditPlaylistReqImplToJson(
        _$EditPlaylistReqImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'qrCode': instance.qrCode,
      'playlistId': instance.playlistId,
    };

_$EditPlaylistResImpl _$$EditPlaylistResImplFromJson(
        Map<String, dynamic> json) =>
    _$EditPlaylistResImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      body: json['body'],
    );

Map<String, dynamic> _$$EditPlaylistResImplToJson(
        _$EditPlaylistResImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'body': instance.body,
    };
