import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_member_model.freezed.dart';
part 'delete_member_model.g.dart';

// response
DeleteMemberRes deleteMemberResFromJson(String str) =>
    DeleteMemberRes.fromJson(json.decode(str));

String deleteMemberResToJson(DeleteMemberRes data) =>
    json.encode(data.toJson());

@freezed
class DeleteMemberRes with _$DeleteMemberRes {
  const factory DeleteMemberRes({
    bool? success,
    String? message,
  }) = _DeleteMemberRes;

  factory DeleteMemberRes.fromJson(Map<String, dynamic> json) =>
      _$DeleteMemberResFromJson(json);
}
