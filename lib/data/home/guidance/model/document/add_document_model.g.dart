// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_document_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddDocumentReqImpl _$$AddDocumentReqImplFromJson(Map<String, dynamic> json) =>
    _$AddDocumentReqImpl(
      title: json['title'] as String?,
      file: json['file'] as String?,
      contentType: json['contentType'] as String?,
      thumbnail: json['thumbnail'] as String?,
      duration: json['duration'] as String?,
      playlistId: json['playlistId'] as String?,
    );

Map<String, dynamic> _$$AddDocumentReqImplToJson(
        _$AddDocumentReqImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'file': instance.file,
      'contentType': instance.contentType,
      'thumbnail': instance.thumbnail,
      'duration': instance.duration,
      'playlistId': instance.playlistId,
    };

_$AddDocumentResImpl _$$AddDocumentResImplFromJson(Map<String, dynamic> json) =>
    _$AddDocumentResImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      body: json['body'],
    );

Map<String, dynamic> _$$AddDocumentResImplToJson(
        _$AddDocumentResImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'body': instance.body,
    };
