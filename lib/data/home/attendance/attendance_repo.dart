import 'package:dartz/dartz.dart';
import 'package:omifit_studio/core/exceptions.dart';

abstract class AttendanceRepo {
  Future<Either<ApiException, dynamic>> fnName();
}
