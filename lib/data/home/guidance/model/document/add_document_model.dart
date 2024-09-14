// To parse this JSON data, do
//
//     final addDocumentReq = addDocumentReqFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_document_model.freezed.dart';
part 'add_document_model.g.dart';

// request
AddDocumentReq addDocumentReqFromJson(String str) =>
    AddDocumentReq.fromJson(json.decode(str));

String addDocumentReqToJson(AddDocumentReq data) => json.encode(data.toJson());

@freezed
class AddDocumentReq with _$AddDocumentReq {
  const factory AddDocumentReq({
    String? title,
    String? file,
    String? contentType,
    String? thumbnail,
    String? duration,
    String? playlistId,
  }) = _AddDocumentReq;

  factory AddDocumentReq.fromJson(Map<String, dynamic> json) =>
      _$AddDocumentReqFromJson(json);
}
// response

AddDocumentRes addDocumentResFromJson(String str) =>
    AddDocumentRes.fromJson(json.decode(str));

String addDocumentResToJson(AddDocumentRes data) => json.encode(data.toJson());

@freezed
class AddDocumentRes with _$AddDocumentRes {
  const factory AddDocumentRes({
    bool? success,
    String? message,
    dynamic body,
  }) = _AddDocumentRes;

  factory AddDocumentRes.fromJson(Map<String, dynamic> json) =>
      _$AddDocumentResFromJson(json);
}
