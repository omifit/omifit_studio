// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist/get_playlist_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetPlaylistDetailsResImpl _$$GetPlaylistDetailsResImplFromJson(
        Map<String, dynamic> json) =>
    _$GetPlaylistDetailsResImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      body: json['body'] == null
          ? null
          : Body.fromJson(json['body'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetPlaylistDetailsResImplToJson(
        _$GetPlaylistDetailsResImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'body': instance.body,
    };

_$BodyImpl _$$BodyImplFromJson(Map<String, dynamic> json) => _$BodyImpl(
      playlist: json['playlist'] == null
          ? null
          : Playlist.fromJson(json['playlist'] as Map<String, dynamic>),
      documents: (json['documents'] as List<dynamic>?)
          ?.map((e) => Document.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BodyImplToJson(_$BodyImpl instance) =>
    <String, dynamic>{
      'playlist': instance.playlist,
      'documents': instance.documents,
    };

_$DocumentImpl _$$DocumentImplFromJson(Map<String, dynamic> json) =>
    _$DocumentImpl(
      id: json['_id'] as String?,
      playlist: json['playlist'] as String?,
      title: json['title'] as String?,
      file: json['file'] as String?,
      contentType: json['contentType'] as String?,
      thumbnail: json['thumbnail'] as String?,
      duration: (json['duration'] as num?)?.toInt(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$DocumentImplToJson(_$DocumentImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'playlist': instance.playlist,
      'title': instance.title,
      'file': instance.file,
      'contentType': instance.contentType,
      'thumbnail': instance.thumbnail,
      'duration': instance.duration,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$PlaylistImpl _$$PlaylistImplFromJson(Map<String, dynamic> json) =>
    _$PlaylistImpl(
      id: json['_id'] as String?,
      organization: json['organization'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      image: json['image'],
      qrCode: json['qrCode'],
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
