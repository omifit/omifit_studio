import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_document_model.freezed.dart';
part 'delete_document_model.g.dart';

// response
DeleteDocumentRes deleteDocumentResFromJson(String str) =>
    DeleteDocumentRes.fromJson(json.decode(str));

String deleteDocumentResToJson(DeleteDocumentRes data) =>
    json.encode(data.toJson());

@freezed
class DeleteDocumentRes with _$DeleteDocumentRes {
  const factory DeleteDocumentRes({
    bool? success,
    String? message,
    dynamic body,
  }) = _DeleteDocumentRes;

  factory DeleteDocumentRes.fromJson(Map<String, dynamic> json) =>
      _$DeleteDocumentResFromJson(json);
}
