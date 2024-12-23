import 'package:dartz/dartz.dart';
import 'package:omifit_studio/core/exceptions.dart';
import 'package:omifit_studio/data/home/plan/model/create_plan_model.dart';
import 'package:omifit_studio/data/home/plan/model/delete_plan_model.dart';
import 'package:omifit_studio/data/home/plan/model/edit_plan_model.dart';
import 'package:omifit_studio/data/home/plan/model/get_planlist_model.dart';
import 'package:omifit_studio/data/home/plan/model/plan_details_model.dart';

abstract class PlanRepo {
  Future<Either<ApiException, CreatePlanRes>> createPlan(CreatePlanReq req);
  Future<Either<ApiException, EditPlanRes>> editPlan(
      EditPlanReq req, String pid);
  Future<Either<ApiException, DeletePlanRes>> deletePlan(String pid);
  Future<Either<ApiException, GetPlanListRes>> getplanlist();
  Future<Either<ApiException, PlanDetailsRes>> plansDetails(String pid);
}
