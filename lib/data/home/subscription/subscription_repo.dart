import 'package:dartz/dartz.dart';
import 'package:omifit_studio/core/exceptions.dart';
import 'package:omifit_studio/data/home/subscription/model/cancel_subscription_model.dart';
import 'package:omifit_studio/data/home/subscription/model/edit_subscription_model.dart';
import 'package:omifit_studio/data/home/subscription/model/get_subscription_byuser_model.dart';
import 'package:omifit_studio/data/home/subscription/model/getall_subscription_model.dart';
import 'package:omifit_studio/data/home/subscription/model/purchase_plan_model.dart';

abstract class SubscriptionRepo {
  Future<Either<ApiException, PurchasePlanRes>> purchasePlan(PurchasePlanReq req);
  Future<Either<ApiException, EditSubscriptionRes>> editsubscription(EditSubscriptionReq req);
  Future<Either<ApiException, CancelSubscriptionRes>> cancelsubscription(String subscriptionid);
  Future<Either<ApiException, GetallSubscriptionRes>> getallsubscription();
  Future<Either<ApiException, GetallsubscriptionByUserRes>> getallsubscriptionbyuser(String user, String status);
}
