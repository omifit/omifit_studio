import 'package:dartz/dartz.dart';
import 'package:omifit/core/exceptions.dart';

abstract class MemberRepo {
  Future<Either<ApiException, dynamic>> fnName();
}
