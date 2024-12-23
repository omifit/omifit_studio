import 'package:dartz/dartz.dart';
import 'package:logger/web.dart';
import 'package:omifit_studio/core/api_client.dart';
import 'package:omifit_studio/core/constants.dart';
import 'package:omifit_studio/core/endpoints.dart';
import 'package:omifit_studio/core/exceptions.dart';
import 'package:omifit_studio/data/home/subscription/model/cancel_subscription_model.dart';
import 'package:omifit_studio/data/home/subscription/model/edit_subscription_model.dart';
import 'package:omifit_studio/data/home/subscription/model/get_subscription_byuser_model.dart';
import 'package:omifit_studio/data/home/subscription/model/getall_subscription_model.dart';
import 'package:omifit_studio/data/home/subscription/model/purchase_plan_model.dart';
import 'package:omifit_studio/data/home/subscription/subscription_repo.dart';

class SubscriptionRepoImpl implements SubscriptionRepo {
  final ApiClient _apiClient = ApiClient();
  Logger logger = Logger();

  @override
  Future<Either<ApiException, PurchasePlanRes>> purchasePlan(
      PurchasePlanReq req) async {
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}$purchasePlanurl",
        purchasePlanReqToJson(req),
      );
      return Right(PurchasePlanRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, EditSubscriptionRes>> editsubscription(
      EditSubscriptionReq req) async {
    try {
      final response = await _apiClient.put(
        "${AppConstants.baseUrl}$editsubscriptionurl",
        editSubscriptionReqToJson(req),
      );
      return Right(EditSubscriptionRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, GetallSubscriptionRes>>
      getallsubscription() async {
    try {
      final response =
          await _apiClient.get("${AppConstants.baseUrl}$getallsubscriptionurl");
      return Right(GetallSubscriptionRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, CancelSubscriptionRes>> cancelsubscription(
      String subscriptionid) async {
    try {
      final response = await _apiClient.delete(
          "${AppConstants.baseUrl}${cancelsubscriptionurl(subscriptionid)}");
      return Right(CancelSubscriptionRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, GetallsubscriptionByUserRes>>
      getallsubscriptionbyuser(String user, String status) async {
    try {
      final response = await _apiClient.getwithquery(
          "${AppConstants.baseUrl}$getallsubscriptionbyuserurl",
          {"user": user, "filter": status});
      return Right(GetallsubscriptionByUserRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }
}
