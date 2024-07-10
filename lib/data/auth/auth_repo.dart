import 'package:dartz/dartz.dart';
import 'package:omifit/core/exceptions.dart';
import 'package:omifit/data/auth/model/login_model.dart';
import 'package:omifit/data/auth/model/register_model.dart';
import 'package:omifit/data/auth/model/sendotp_model.dart';
import 'package:omifit/data/auth/model/user_details_model.dart';
import 'package:omifit/data/auth/model/user_details_update_model.dart';
import 'package:omifit/data/auth/model/verifyotp_model.dart';

abstract class AuthRepo {
  Future<Either<ApiException, SendOtpRes>> sendOtp(SendOtpReq sendOtpReq);
  Future<Either<ApiException, VerifyOtpRes>> verifyOtp(VerifyOtpReq verifyOtpReq);
  Future<Either<ApiException, LoginRes>> login(LoginReq loginReq);
  Future<Either<ApiException, RegisterRes>> register(RegisterReq registerReq);
  Future<Either<ApiException, UserDetailsRes>> userDetails(LoginReq loginReq);
  Future<Either<ApiException, UserDetailsUpdateRes>> updateDetails(UserDetailsUpdateReq userDetailsUpdateReq);
}
