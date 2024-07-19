import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'sendotp_model.freezed.dart';
part 'sendotp_model.g.dart';

//! request =====>

SendOtpReq sendOtpReqFromJson(String str) =>
    SendOtpReq.fromJson(json.decode(str));

String sendOtpReqToJson(SendOtpReq data) => json.encode(data.toJson());

@freezed
class SendOtpReq with _$SendOtpReq {
  const factory SendOtpReq({
    String? phoneNumber,
    bool? forOldUser,
    bool? forNewUser,
  }) = _SendOtpReq;

  factory SendOtpReq.fromJson(Map<String, dynamic> json) =>
      _$SendOtpReqFromJson(json);
}

//! response ======>

SendOtpRes sendOtpResFromJson(String str) =>
    SendOtpRes.fromJson(json.decode(str));

String sendOtpResToJson(SendOtpRes data) => json.encode(data.toJson());

@freezed
class SendOtpRes with _$SendOtpRes {
  const factory SendOtpRes({
    bool? success,
    String? message,
    Body? body,
  }) = _SendOtpRes;

  factory SendOtpRes.fromJson(Map<String, dynamic> json) =>
      _$SendOtpResFromJson(json);
}

@freezed
class Body with _$Body {
  const factory Body({
    String? phoneNumber,
  }) = _Body;

  factory Body.fromJson(Map<String, dynamic> json) => _$BodyFromJson(json);
}
