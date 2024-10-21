import 'package:dartz/dartz.dart';
import 'package:omifit/core/exceptions.dart';
import 'package:omifit/data/home/member/model/add_member_model.dart';
import 'package:omifit/data/home/member/model/delete_member_model.dart';
import 'package:omifit/data/home/member/model/edit_member_model.dart';
import 'package:omifit/data/home/member/model/get_member_details_model.dart';
import 'package:omifit/data/home/member/model/get_memberlist_model.dart';

abstract class MemberRepo {
  Future<Either<ApiException, AddMemberRes>> createmember(AddMemberReq req);
  Future<Either<ApiException, DeleteMemberRes>> deletemember(String uid);
  Future<Either<ApiException, EditMemberRes>> editmember(EditMemberReq req);
  Future<Either<ApiException, GetMemberListRes>> getmemberlist(GetMemberListReq req);
  Future<Either<ApiException, MemberDetailsRes>> getmemberDetails(String uid);
}
