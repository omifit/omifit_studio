import 'package:dartz/dartz.dart';
import 'package:omifit/core/exceptions.dart';

abstract class AttendanceRepo {
  Future<Either<ApiException, dynamic>> fnName();
}
