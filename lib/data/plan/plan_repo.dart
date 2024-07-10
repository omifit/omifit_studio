import 'package:dartz/dartz.dart';
import 'package:omifit/core/exceptions.dart';

abstract class PlanRepo {
  Future<Either<ApiException, dynamic>> fnName();
}
