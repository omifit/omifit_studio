// To parse this JSON data, do
//
//     final editPlaylistReq = editPlaylistReqFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part '../edit_playlist_model.freezed.dart';
part '../edit_playlist_model.g.dart';

// request
EditPlaylistReq editPlaylistReqFromJson(String str) =>
    EditPlaylistReq.fromJson(json.decode(str));

String editPlaylistReqToJson(EditPlaylistReq data) =>
    json.encode(data.toJson());

@freezed
class EditPlaylistReq with _$EditPlaylistReq {
  const factory EditPlaylistReq({
    String? title,
    String? description,
    String? image,
    String? qrCode,
    String? playlistId,
  }) = _EditPlaylistReq;

  factory EditPlaylistReq.fromJson(Map<String, dynamic> json) =>
      _$EditPlaylistReqFromJson(json);
}

// response

EditPlaylistRes editPlaylistResFromJson(String str) =>
    EditPlaylistRes.fromJson(json.decode(str));

String editPlaylistResToJson(EditPlaylistRes data) =>
    json.encode(data.toJson());

@freezed
class EditPlaylistRes with _$EditPlaylistRes {
  const factory EditPlaylistRes({
    bool? success,
    String? message,
    dynamic body,
  }) = _EditPlaylistRes;

  factory EditPlaylistRes.fromJson(Map<String, dynamic> json) =>
      _$EditPlaylistResFromJson(json);
}
