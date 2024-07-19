import 'package:dartz/dartz.dart';
import 'package:logger/web.dart';
import 'package:omifit/core/api_client.dart';
import 'package:omifit/core/exceptions.dart';
import 'package:omifit/data/home/staff/staff_repo.dart';

class StaffRepoImpl implements StaffRepo {
  final ApiClient _apiClient = ApiClient();
  Logger logger = Logger();

  @override
  Future<Either<ApiException, dynamic>> fnName() {
    // TODO: implement fnName
    throw UnimplementedError();
  }
}
