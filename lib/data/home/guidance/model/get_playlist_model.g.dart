// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist/get_playlist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetPlaylistResImpl _$$GetPlaylistResImplFromJson(Map<String, dynamic> json) =>
    _$GetPlaylistResImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      body: json['body'] == null
          ? null
          : Body.fromJson(json['body'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetPlaylistResImplToJson(
        _$GetPlaylistResImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'body': instance.body,
    };

_$BodyImpl _$$BodyImplFromJson(Map<String, dynamic> json) => _$BodyImpl(
      playlists: (json['playlists'] as List<dynamic>?)
          ?.map((e) => Playlist.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BodyImplToJson(_$BodyImpl instance) =>
    <String, dynamic>{
      'playlists': instance.playlists,
    };

_$PlaylistImpl _$$PlaylistImplFromJson(Map<String, dynamic> json) =>
    _$PlaylistImpl(
      id: json['_id'] as String?,
      organization: json['organization'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      qrCode: json['qrCode'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$PlaylistImplToJson(_$PlaylistImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'organization': instance.organization,
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'qrCode': instance.qrCode,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
