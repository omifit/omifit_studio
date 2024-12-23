// To parse this JSON data, do
//
//     final deleteStaffRes = deleteStaffResFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_staff_model.freezed.dart';
part 'delete_staff_model.g.dart';

//reponse
DeleteStaffRes deleteStaffResFromJson(String str) =>
    DeleteStaffRes.fromJson(json.decode(str));

String deleteStaffResToJson(DeleteStaffRes data) => json.encode(data.toJson());

@freezed
class DeleteStaffRes with _$DeleteStaffRes {
  const factory DeleteStaffRes({
    bool? success,
    String? message,
  }) = _DeleteStaffRes;

  factory DeleteStaffRes.fromJson(Map<String, dynamic> json) =>
      _$DeleteStaffResFromJson(json);
}
