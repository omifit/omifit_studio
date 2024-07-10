import 'package:dartz/dartz.dart';
import 'package:omifit/core/exceptions.dart';

abstract class LeadRepo {
  Future<Either<ApiException, dynamic>> fnName();
}
