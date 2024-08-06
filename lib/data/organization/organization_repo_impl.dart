import 'package:dartz/dartz.dart';
import 'package:logger/web.dart';
import 'package:omifit/core/api_client.dart';
import 'package:omifit/core/constants.dart';
import 'package:omifit/core/endpoints.dart';
import 'package:omifit/core/exceptions.dart';
import 'package:omifit/data/organization/model/createorg_model.dart';
import 'package:omifit/data/organization/model/orglistbyuser_model.dart';
import 'package:omifit/data/organization/model/selectorg_model.dart';
import 'package:omifit/data/organization/organization_repo.dart';

class OrganizationRepoImpl implements OrganizationRepo {
  final ApiClient _apiClient = ApiClient();
  Logger logger = Logger();

  @override
  Future<Either<ApiException, CreateorgRes>> createorg(
      CreateorgReq createorgReq) async {
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}$createorgurl",
        createorgReqToJson(createorgReq),
      );
      return Right(CreateorgRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, OrglistbyuserRes>> orglistbyuser() async {
    try {
      final response = await _apiClient.get(
        "${AppConstants.baseUrl}$orglistbyuserurl",
      );
      return Right(OrglistbyuserRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, SelectorgRes>> selectorg(
      SelectorgReq selectorgReq) async {
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}$selectorgurl",
        selectorgReqToJson(selectorgReq),
      );
      return Right(SelectorgRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }
}
