import 'package:dartz/dartz.dart';
import 'package:logger/web.dart';
import 'package:omifit_studio/core/api_client.dart';
import 'package:omifit_studio/core/constants.dart';
import 'package:omifit_studio/core/endpoints.dart';
import 'package:omifit_studio/core/exceptions.dart';
import 'package:omifit_studio/data/home/staff/model/add_staff_model.dart';
import 'package:omifit_studio/data/home/staff/model/delete_staff_model.dart';
import 'package:omifit_studio/data/home/staff/model/edit_staff_model.dart';
import 'package:omifit_studio/data/home/staff/model/get_staff_details_model.dart';
import 'package:omifit_studio/data/home/staff/model/get_stafflist_model.dart';
import 'package:omifit_studio/data/home/staff/model/student/add_student_model.dart';
import 'package:omifit_studio/data/home/staff/model/student/get_coach_model.dart';
import 'package:omifit_studio/data/home/staff/model/student/get_studentlist_model.dart';
import 'package:omifit_studio/data/home/staff/model/student/remove_student_model.dart';
import 'package:omifit_studio/data/home/staff/staff_repo.dart';

class StaffRepoImpl implements StaffRepo {
  final ApiClient _apiClient = ApiClient();
  Logger logger = Logger();

  @override
  Future<Either<ApiException, AddStaffRes>> addStaff(AddStaffReq req) async {
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}$createstaffurl",
        addStaffReqToJson(req),
      );
      return Right(AddStaffRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, DeleteStaffRes>> deleteStaff(String uid) async {
    try {
      final response = await _apiClient
          .delete("${AppConstants.baseUrl}${deletestaffurl(uid)}");
      return Right(DeleteStaffRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, EditStaffRes>> editStaff(EditStaffReq req) async {
    try {
      final response = await _apiClient.put(
        "${AppConstants.baseUrl}$editstaffurl",
        editStaffReqToJson(req),
      );
      return Right(EditStaffRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, GetStaffDetailsRes>> staffDetails(
      String uid) async {
    try {
      final response = await _apiClient
          .get("${AppConstants.baseUrl}${staffdetailsurl(uid)}");
      return Right(GetStaffDetailsRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, GetStafflistRes>> getstafflist(
      GetStaffListReq req) async {
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}$stafflisturl",
        getStaffListReqToJson(req),
      );
      return Right(GetStafflistRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, AddStudentRes>> addStudent(
      AddStudentReq req) async {
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}$addStudenturl",
        addStudentReqToJson(req),
      );
      return Right(AddStudentRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, RemoveStudentRes>> removeStudent(
      RemoveStudentReq req) async {
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}$removeStudenturl",
        removeStudentReqToJson(req),
      );
      return Right(RemoveStudentRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, GetStudentListRes>> getstudentlist(
      String uid) async {
    try {
      final response = await _apiClient
          .get("${AppConstants.baseUrl}${getstudentlisturl(uid)}");
      return Right(GetStudentListRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, GetCoachRes>> getcoachlist(String uid) async {
    try {
      final response = await _apiClient.get(
        "${AppConstants.baseUrl}${getcoachesurl(uid)}",
      );
      return Right(GetCoachRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }
}
