import 'package:dartz/dartz.dart';
import 'package:logger/web.dart';
import 'package:omifit/core/api_client.dart';
import 'package:omifit/core/exceptions.dart';
import 'package:omifit/data/guidance/guidance_repo.dart';

class GuidanceRepoImpl implements GuidanceRepo {
  final ApiClient _apiClient = ApiClient();
  Logger logger = Logger();

  @override
  Future<Either<ApiException, dynamic>> fnName() {
    // TODO: implement fnName
    throw UnimplementedError();
  }
}
