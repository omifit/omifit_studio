import 'package:dartz/dartz.dart';
import 'package:omifit/core/exceptions.dart';

abstract class StaffRepo {
  Future<Either<ApiException, dynamic>> fnName();
}
