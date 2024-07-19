import 'package:dartz/dartz.dart';
import 'package:omifit/core/exceptions.dart';
import 'package:omifit/data/auth/model/login/login_model.dart';
import 'package:omifit/data/auth/model/register/register_model.dart';
import 'package:omifit/data/auth/model/send_otp/sendotp_model.dart';
import 'package:omifit/data/auth/model/user_details/user_details_model.dart';
import 'package:omifit/data/auth/model/user_update/user_details_update_model.dart';
import 'package:omifit/data/auth/model/verify_otp/verifyotp_model.dart';

abstract class AuthRepo {
  Future<Either<ApiException, SendOtpRes>> sendOtp(SendOtpReq sOtpReq);
  Future<Either<ApiException, VerifyOtpRes>> verifyOtp(VerifyOtpReq vOtpReq);
  Future<Either<ApiException, LoginRes>> login(LoginReq loginReq);
  Future<Either<ApiException, RegisterRes>> register(RegisterReq registerReq);
  Future<Either<ApiException, UserDetailsRes>> userDetails();
  Future<Either<ApiException, UserDetailsUpdateRes>> updateDetails(UserDetailsUpdateReq userupReq);
}
