import 'package:dartz/dartz.dart';
import 'package:logger/web.dart';
import 'package:omifit/core/api_client.dart';
import 'package:omifit/core/constants.dart';
import 'package:omifit/core/endpoints.dart';
import 'package:omifit/core/exceptions.dart';
import 'package:omifit/data/home/member/member_repo.dart';
import 'package:omifit/data/home/member/model/add_member_model.dart';
import 'package:omifit/data/home/member/model/delete_member_model.dart';
import 'package:omifit/data/home/member/model/edit_member_model.dart';
import 'package:omifit/data/home/member/model/get_member_details_model.dart';
import 'package:omifit/data/home/member/model/get_memberlist_model.dart';

class MemberRepoImpl implements MemberRepo {
  final ApiClient _apiClient = ApiClient();
  Logger logger = Logger();

  @override
  Future<Either<ApiException, AddMemberRes>> createmember(
      AddMemberReq req) async {
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}$creatememberurl",
        addMemberReqToJson(req),
      );
      return Right(AddMemberRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, DeleteMemberRes>> deletemember(String uid) async {
    try {
      final response = await _apiClient.delete(
        "${AppConstants.baseUrl}${deletememberurl(uid)}",
      );
      return Right(DeleteMemberRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, EditMemberRes>> editmember(
      EditMemberReq req) async {
    try {
      final response = await _apiClient.put(
        "${AppConstants.baseUrl}$editmemberurl",
        editMemberReqToJson(req),
      );
      return Right(EditMemberRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, MemberDetailsRes>> getmemberDetails(
      String uid) async {
    try {
      final response = await _apiClient.get(
        "${AppConstants.baseUrl}${memberdetailsurl(uid)}",
      );
      return Right(MemberDetailsRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, GetMemberListRes>> getmemberlist(
      GetMemberListReq req) async {
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}$memberlisturl",
        getMemberListReqToJson(req),
      );
      return Right(GetMemberListRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }
}
