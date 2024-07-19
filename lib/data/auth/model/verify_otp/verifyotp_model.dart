import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'verifyotp_model.freezed.dart';
part 'verifyotp_model.g.dart';

//! req ====>

VerifyOtpReq verifyOtpReqFromJson(String str) =>
    VerifyOtpReq.fromJson(json.decode(str));

String verifyOtpReqToJson(VerifyOtpReq data) => json.encode(data.toJson());

@freezed
class VerifyOtpReq with _$VerifyOtpReq {
  const factory VerifyOtpReq({
    String? phoneNumber,
    String? otp,
  }) = _VerifyOtpReq;

  factory VerifyOtpReq.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpReqFromJson(json);
}

//! response
VerifyOtpRes verifyOtpResFromJson(String str) =>
    VerifyOtpRes.fromJson(json.decode(str));

String verifyOtpResToJson(VerifyOtpRes data) => json.encode(data.toJson());

@freezed
class VerifyOtpRes with _$VerifyOtpRes {
  const factory VerifyOtpRes({
    bool? success,
    String? message,
    Body? body,
  }) = _VerifyOtpRes;

  factory VerifyOtpRes.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpResFromJson(json);
}

@freezed
class Body with _$Body {
  const factory Body({
    String? phoneNumber,
  }) = _Body;

  factory Body.fromJson(Map<String, dynamic> json) => _$BodyFromJson(json);
}
