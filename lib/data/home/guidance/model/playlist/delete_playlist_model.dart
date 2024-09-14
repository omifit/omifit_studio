// To parse this JSON data, do
//
//     final deletePlaylistRes = deletePlaylistResFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part '../delete_playlist_model.freezed.dart';
part '../delete_playlist_model.g.dart';

// response
DeletePlaylistRes deletePlaylistResFromJson(String str) =>
    DeletePlaylistRes.fromJson(json.decode(str));

String deletePlaylistResToJson(DeletePlaylistRes data) =>
    json.encode(data.toJson());

@freezed
class DeletePlaylistRes with _$DeletePlaylistRes {
  const factory DeletePlaylistRes({
    bool? success,
    String? message,
    dynamic body,
  }) = _DeletePlaylistRes;

  factory DeletePlaylistRes.fromJson(Map<String, dynamic> json) =>
      _$DeletePlaylistResFromJson(json);
}
