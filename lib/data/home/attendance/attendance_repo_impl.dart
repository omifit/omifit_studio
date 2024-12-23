import 'package:dartz/dartz.dart';
import 'package:logger/web.dart';
import 'package:omifit_studio/core/api_client.dart';
import 'package:omifit_studio/core/exceptions.dart';
import 'package:omifit_studio/data/home/attendance/attendance_repo.dart';

class AttendanceRepoImpl implements AttendanceRepo {
  final ApiClient _apiClient = ApiClient();
  Logger logger = Logger();

  @override
  Future<Either<ApiException, dynamic>> fnName() {
    // TODO: implement fnName
    throw UnimplementedError();
  }
}
