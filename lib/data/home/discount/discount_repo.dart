import 'package:dartz/dartz.dart';
import 'package:omifit/core/exceptions.dart';

abstract class DiscountRepo {
  Future<Either<ApiException, dynamic>> fnName();
}
