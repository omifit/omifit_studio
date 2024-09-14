// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_document_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeleteDocumentResImpl _$$DeleteDocumentResImplFromJson(
        Map<String, dynamic> json) =>
    _$DeleteDocumentResImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      body: json['body'],
    );

Map<String, dynamic> _$$DeleteDocumentResImplToJson(
        _$DeleteDocumentResImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'body': instance.body,
    };
