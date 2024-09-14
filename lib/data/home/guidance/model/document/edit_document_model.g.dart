// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_document_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditDocumentReqImpl _$$EditDocumentReqImplFromJson(
        Map<String, dynamic> json) =>
    _$EditDocumentReqImpl(
      title: json['title'] as String?,
      file: json['file'] as String?,
      contentType: json['contentType'] as String?,
      thumbnail: json['thumbnail'] as String?,
      duration: json['duration'] as String?,
      playlistId: json['playlistId'] as String?,
      documentId: json['documentId'] as String?,
    );

Map<String, dynamic> _$$EditDocumentReqImplToJson(
        _$EditDocumentReqImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'file': instance.file,
      'contentType': instance.contentType,
      'thumbnail': instance.thumbnail,
      'duration': instance.duration,
      'playlistId': instance.playlistId,
      'documentId': instance.documentId,
    };

_$EditDocumentResImpl _$$EditDocumentResImplFromJson(
        Map<String, dynamic> json) =>
    _$EditDocumentResImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      body: json['body'],
    );

Map<String, dynamic> _$$EditDocumentResImplToJson(
        _$EditDocumentResImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'body': instance.body,
    };
