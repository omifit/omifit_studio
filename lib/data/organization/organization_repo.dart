import 'package:dartz/dartz.dart';
import 'package:omifit/core/exceptions.dart';

abstract class OrganizationRepo {
  Future<Either<ApiException, dynamic>> fnName();
}
