import 'package:dartz/dartz.dart';
import 'package:logger/web.dart';
import 'package:omifit/core/api_client.dart';
import 'package:omifit/core/constants.dart';
import 'package:omifit/core/endpoints.dart';
import 'package:omifit/core/exceptions.dart';
import 'package:omifit/data/auth/auth_repo.dart';
import 'package:omifit/data/auth/model/login_model.dart';
import 'package:omifit/data/auth/model/register_model.dart';
import 'package:omifit/data/auth/model/sendotp_model.dart';
import 'package:omifit/data/auth/model/user_details_model.dart';
import 'package:omifit/data/auth/model/user_details_update_model.dart';
import 'package:omifit/data/auth/model/verifyotp_model.dart';

class AuthRepoImpl implements AuthRepo {
  final ApiClient _apiClient = ApiClient();
  Logger logger = Logger();

  @override
  Future<Either<ApiException, SendOtpRes>> sendOtp(
      SendOtpReq sendOtpReq) async {
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}$sendotpurl",
        sendOtpReqToJson(sendOtpReq),
      );
      return Right(SendOtpRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, LoginRes>> login(LoginReq loginReq) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiException, RegisterRes>> register(RegisterReq registerReq) {
    // TODO: implement register
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiException, UserDetailsUpdateRes>> updateDetails(UserDetailsUpdateReq userDetailsUpdateReq) {
    // TODO: implement updateDetails
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiException, UserDetailsRes>> userDetails(LoginReq loginReq) {
    // TODO: implement userDetails
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiException, VerifyOtpRes>> verifyOtp(VerifyOtpReq verifyOtpReq) {
    // TODO: implement verifyOtp
    throw UnimplementedError();
  }
}
