import 'package:dartz/dartz.dart';
import 'package:omifit/core/exceptions.dart';
import 'package:omifit/data/organization/model/createorg_model.dart';
import 'package:omifit/data/organization/model/orglistbyuser_model.dart';
import 'package:omifit/data/organization/model/selectorg_model.dart';

abstract class OrganizationRepo {
  Future<Either<ApiException, CreateorgRes>> createorg(CreateorgReq createorgReq);
  Future<Either<ApiException, SelectorgRes>> selectorg(SelectorgReq selectorgReq);
  Future<Either<ApiException, OrglistbyuserRes>> orglistbyuser();
}
