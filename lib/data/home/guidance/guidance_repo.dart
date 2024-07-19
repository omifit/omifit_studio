import 'package:dartz/dartz.dart';
import 'package:omifit/core/exceptions.dart';

abstract class GuidanceRepo {
  Future<Either<ApiException, dynamic>> fnName();
}
