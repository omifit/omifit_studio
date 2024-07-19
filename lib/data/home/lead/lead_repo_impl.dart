import 'package:dartz/dartz.dart';
import 'package:logger/web.dart';
import 'package:omifit/core/api_client.dart';
import 'package:omifit/core/exceptions.dart';
import 'package:omifit/data/home/lead/lead_repo.dart';

class LeadRepoImpl implements LeadRepo {
  final ApiClient _apiClient = ApiClient();
  Logger logger = Logger();

  @override
  Future<Either<ApiException, dynamic>> fnName() {
    // TODO: implement fnName
    throw UnimplementedError();
  }
}
