import 'package:dartz/dartz.dart';
import 'package:omifit/core/exceptions.dart';

abstract class DashboardRepo {
  Future<Either<ApiException, dynamic>> fnName();
}
