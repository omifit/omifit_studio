// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist/delete_playlist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeletePlaylistResImpl _$$DeletePlaylistResImplFromJson(
        Map<String, dynamic> json) =>
    _$DeletePlaylistResImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      body: json['body'],
    );

Map<String, dynamic> _$$DeletePlaylistResImplToJson(
        _$DeletePlaylistResImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'body': instance.body,
    };
