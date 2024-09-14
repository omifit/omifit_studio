// To parse this JSON data, do
//
//     final createPlaylistReq = createPlaylistReqFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part '../create_playlist_model.freezed.dart';
part '../create_playlist_model.g.dart';

// request
CreatePlaylistReq createPlaylistReqFromJson(String str) =>
    CreatePlaylistReq.fromJson(json.decode(str));

String createPlaylistReqToJson(CreatePlaylistReq data) =>
    json.encode(data.toJson());

@freezed
class CreatePlaylistReq with _$CreatePlaylistReq {
  const factory CreatePlaylistReq({
    String? title,
    String? description,
    String? image,
    String? qrCode,
  }) = _CreatePlaylistReq;

  factory CreatePlaylistReq.fromJson(Map<String, dynamic> json) =>
      _$CreatePlaylistReqFromJson(json);
}

// response

CreatePlaylistRes createPlaylistResFromJson(String str) =>
    CreatePlaylistRes.fromJson(json.decode(str));

String createPlaylistResToJson(CreatePlaylistRes data) =>
    json.encode(data.toJson());

@freezed
class CreatePlaylistRes with _$CreatePlaylistRes {
  const factory CreatePlaylistRes({
    bool? success,
    String? message,
    dynamic body,
  }) = _CreatePlaylistRes;

  factory CreatePlaylistRes.fromJson(Map<String, dynamic> json) =>
      _$CreatePlaylistResFromJson(json);
}
