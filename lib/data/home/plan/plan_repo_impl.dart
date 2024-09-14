import 'package:dartz/dartz.dart';
import 'package:logger/web.dart';
import 'package:omifit/core/api_client.dart';
import 'package:omifit/core/constants.dart';
import 'package:omifit/core/endpoints.dart';
import 'package:omifit/core/exceptions.dart';
import 'package:omifit/data/home/plan/model/create_plan_model.dart';
import 'package:omifit/data/home/plan/model/delete_plan_model.dart';
import 'package:omifit/data/home/plan/model/edit_plan_model.dart';
import 'package:omifit/data/home/plan/model/get_planlist_model.dart';
import 'package:omifit/data/home/plan/model/plan_details_model.dart';
import 'package:omifit/data/home/plan/plan_repo.dart';

class PlanRepoImpl implements PlanRepo {
  final ApiClient _apiClient = ApiClient();
  Logger logger = Logger();

  @override
  Future<Either<ApiException, CreatePlanRes>> createPlan(
      CreatePlanReq req) async {
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}$createplanurl",
        createPlanReqToJson(req),
      );
      return Right(CreatePlanRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, DeletePlanRes>> deletePlan(String id) async {
    try {
      final response = await _apiClient.delete(
        "${AppConstants.baseUrl}${deleteplanurl(id)}",
      );
      return Right(DeletePlanRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, EditPlanRes>> editPlan(
      EditPlanReq req, String pid) async {
    try {
      final response = await _apiClient.put(
        "${AppConstants.baseUrl}${editplanurl(pid)}",
        editPlanReqToJson(req),
      );
      return Right(EditPlanRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, GetPlanListRes>> getplanlist() async {
    try {
      final response =
          await _apiClient.post("${AppConstants.baseUrl}$planlisturl", {});
      return Right(GetPlanListRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, PlanDetailsRes>> plansDetails(String pid) async {
    try {
      final response = await _apiClient.get(
        "${AppConstants.baseUrl}${plandetailsurl(pid)}",
      );
      return Right(PlanDetailsRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }
}
