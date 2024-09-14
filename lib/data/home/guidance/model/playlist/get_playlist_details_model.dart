// To parse this JSON data, do
//
//     final getPlaylistDetailsRes = getPlaylistDetailsResFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part '../get_playlist_details_model.freezed.dart';
part '../get_playlist_details_model.g.dart';

GetPlaylistDetailsRes getPlaylistDetailsResFromJson(String str) =>
    GetPlaylistDetailsRes.fromJson(json.decode(str));

String getPlaylistDetailsResToJson(GetPlaylistDetailsRes data) =>
    json.encode(data.toJson());

@freezed
class GetPlaylistDetailsRes with _$GetPlaylistDetailsRes {
  const factory GetPlaylistDetailsRes({
    bool? success,
    String? message,
    Body? body,
  }) = _GetPlaylistDetailsRes;

  factory GetPlaylistDetailsRes.fromJson(Map<String, dynamic> json) =>
      _$GetPlaylistDetailsResFromJson(json);
}

@freezed
class Body with _$Body {
  const factory Body({
    Playlist? playlist,
    List<Document>? documents,
  }) = _Body;

  factory Body.fromJson(Map<String, dynamic> json) => _$BodyFromJson(json);
}

@freezed
class Document with _$Document {
  const factory Document({
    @JsonKey(name: '_id') String? id,
    String? playlist,
    String? title,
    String? file,
    String? contentType,
    String? thumbnail,
    int? duration,
    String? createdAt,
    String? updatedAt,
  }) = _Document;

  factory Document.fromJson(Map<String, dynamic> json) =>
      _$DocumentFromJson(json);
}

@freezed
class Playlist with _$Playlist {
  const factory Playlist({
    @JsonKey(name: '_id') String? id,
    String? organization,
    String? title,
    String? description,
    dynamic image,
    dynamic qrCode,
    String? createdAt,
    String? updatedAt,
  }) = _Playlist;

  factory Playlist.fromJson(Map<String, dynamic> json) =>
      _$PlaylistFromJson(json);
}
