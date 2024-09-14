import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_document_model.freezed.dart';
part 'edit_document_model.g.dart';

// request
EditDocumentReq editDocumentReqFromJson(String str) =>
    EditDocumentReq.fromJson(json.decode(str));

String editDocumentReqToJson(EditDocumentReq data) =>
    json.encode(data.toJson());

@freezed
class EditDocumentReq with _$EditDocumentReq {
  const factory EditDocumentReq({
    String? title,
    String? file,
    String? contentType,
    String? thumbnail,
    String? duration,
    String? playlistId,
    String? documentId,
  }) = _EditDocumentReq;

  factory EditDocumentReq.fromJson(Map<String, dynamic> json) =>
      _$EditDocumentReqFromJson(json);
}
//response

EditDocumentRes editDocumentResFromJson(String str) =>
    EditDocumentRes.fromJson(json.decode(str));

String editDocumentResToJson(EditDocumentRes data) =>
    json.encode(data.toJson());

@freezed
class EditDocumentRes with _$EditDocumentRes {
  const factory EditDocumentRes({
    bool? success,
    String? message,
    dynamic body,
  }) = _EditDocumentRes;

  factory EditDocumentRes.fromJson(Map<String, dynamic> json) =>
      _$EditDocumentResFromJson(json);
}
