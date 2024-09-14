// To parse this JSON data, do
//
//     final getPlaylistRes = getPlaylistResFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part '../get_playlist_model.freezed.dart';
part '../get_playlist_model.g.dart';

GetPlaylistRes getPlaylistResFromJson(String str) =>
    GetPlaylistRes.fromJson(json.decode(str));

String getPlaylistResToJson(GetPlaylistRes data) => json.encode(data.toJson());

@freezed
class GetPlaylistRes with _$GetPlaylistRes {
  const factory GetPlaylistRes({
    bool? success,
    String? message,
    Body? body,
  }) = _GetPlaylistRes;

  factory GetPlaylistRes.fromJson(Map<String, dynamic> json) =>
      _$GetPlaylistResFromJson(json);
}

@freezed
class Body with _$Body {
  const factory Body({
    List<Playlist>? playlists,
  }) = _Body;

  factory Body.fromJson(Map<String, dynamic> json) => _$BodyFromJson(json);
}

@freezed
class Playlist with _$Playlist {
  const factory Playlist({
    @JsonKey(name: '_id') String? id,
    String? organization,
    String? title,
    String? description,
    String? image,
    String? qrCode,
    String? createdAt,
    String? updatedAt,
  }) = _Playlist;

  factory Playlist.fromJson(Map<String, dynamic> json) =>
      _$PlaylistFromJson(json);
}
