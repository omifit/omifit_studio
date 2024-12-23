import 'package:dartz/dartz.dart';
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

abstract class StaffRepo {
  Future<Either<ApiException, AddStaffRes>> addStaff(AddStaffReq req);
  Future<Either<ApiException, EditStaffRes>> editStaff(EditStaffReq req);
  Future<Either<ApiException, DeleteStaffRes>> deleteStaff(String uid);
  Future<Either<ApiException, GetStaffDetailsRes>> staffDetails(String uid);
  Future<Either<ApiException, GetStafflistRes>> getstafflist(
      GetStaffListReq req);
  Future<Either<ApiException, AddStudentRes>> addStudent(AddStudentReq req);
  Future<Either<ApiException, RemoveStudentRes>> removeStudent(
      RemoveStudentReq req);
  Future<Either<ApiException, GetStudentListRes>> getstudentlist(String uid);
  Future<Either<ApiException, GetCoachRes>> getcoachlist(String uid);
}
