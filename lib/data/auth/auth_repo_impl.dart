import 'package:dartz/dartz.dart';
import 'package:logger/web.dart';
import 'package:omifit/core/api_client.dart';
import 'package:omifit/core/constants.dart';
import 'package:omifit/core/endpoints.dart';
import 'package:omifit/core/exceptions.dart';
import 'package:omifit/data/auth/auth_repo.dart';
import 'package:omifit/data/auth/model/login/login_model.dart';
import 'package:omifit/data/auth/model/register/register_model.dart';
import 'package:omifit/data/auth/model/send_otp/sendotp_model.dart';
import 'package:omifit/data/auth/model/user_details/user_details_model.dart';
import 'package:omifit/data/auth/model/user_update/user_details_update_model.dart';
import 'package:omifit/data/auth/model/verify_otp/verifyotp_model.dart';

class AuthRepoImpl implements AuthRepo {
  final ApiClient _apiClient = ApiClient();
  Logger logger = Logger();

  @override
  Future<Either<ApiException, SendOtpRes>> sendOtp(SendOtpReq sotpReq) async {
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}$sendotpurl",
        sendOtpReqToJson(sotpReq),
      );
      return Right(SendOtpRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, VerifyOtpRes>> verifyOtp(
      VerifyOtpReq vOtpReq) async {
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}$verifyurl",
        verifyOtpReqToJson(vOtpReq),
      );
      return Right(VerifyOtpRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, LoginRes>> login(LoginReq loginReq) async {
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}$loginurl",
        loginReqToJson(loginReq),
      );
      return Right(LoginRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, RegisterRes>> register(RegisterReq regReq) async {
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}$registerurl",
        registerReqToJson(regReq),
      );
      return Right(RegisterRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, UserDetailsRes>> userDetails() async {
    try {
      final response =
          await _apiClient.get("${AppConstants.baseUrl}$userDetailsurl");
      return Right(UserDetailsRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, UserDetailsUpdateRes>> updateDetails(
      UserDetailsUpdateReq userupReq) async {
    try {
      final response = await _apiClient.put(
        "${AppConstants.baseUrl}$userDetailsUpdateurl",
        userDetailsUpdateReqToJson(userupReq),
      );
      return Right(UserDetailsUpdateRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }
}
