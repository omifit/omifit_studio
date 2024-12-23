import 'package:cupertino_modal_sheet/cupertino_modal_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:omifit_studio/data/auth/auth_repo.dart';
import 'package:omifit_studio/data/auth/auth_repo_impl.dart';
import 'package:omifit_studio/data/home/member/member_repo.dart';
import 'package:omifit_studio/data/home/member/member_repo_impl.dart';
import 'package:omifit_studio/data/home/member/model/get_memberlist_model.dart';
import 'package:omifit_studio/data/home/staff/model/add_staff_model.dart';
import 'package:omifit_studio/data/home/staff/model/edit_staff_model.dart';
import 'package:omifit_studio/data/home/staff/model/get_staff_details_model.dart';
import 'package:omifit_studio/data/home/staff/model/get_stafflist_model.dart';
import 'package:omifit_studio/data/home/staff/model/student/add_student_model.dart';
import 'package:omifit_studio/data/home/staff/model/student/get_coach_model.dart';
import 'package:omifit_studio/data/home/staff/model/student/get_studentlist_model.dart';
import 'package:omifit_studio/data/home/staff/model/student/remove_student_model.dart';
import 'package:omifit_studio/data/home/staff/staff_repo.dart';
import 'package:omifit_studio/data/home/staff/staff_repo_impl.dart';
import 'package:omifit_studio/utils/parse.dart';
import 'package:omifit_studio/utils/utils.dart';
import 'package:omifit_studio/view/organization/member/member_view_model.dart';
import 'package:omifit_studio/view/organization/staff/dialog/add_staff/add_staff_view.dart';

final staffViewModelProvider =
    ChangeNotifierProvider((ref) => StaffViewModel(ref: ref));

class StaffViewModel extends ChangeNotifier {
  Ref ref;
  StaffViewModel({required this.ref});

  final StaffRepo _staffRepo = StaffRepoImpl();
  final MemberRepo _memberRepo = MemberRepoImpl();
  final AuthRepo _authRepo = AuthRepoImpl();

//* staff =================>

// Search user

  bool _loadingSearchUser = false;
  bool get loadingSearchUser => _loadingSearchUser;

  Future<void> searchUser(
      BuildContext ctx, String phoneNumber, GetStaffListReq? stafffilter) {
    _loadingSearchUser = true;
    notifyListeners();
    return _authRepo.searchUser(phoneNumber, "user").then((value) {
      _loadingSearchUser = false;
      notifyListeners();
      value.fold((l) {}, (r) {
        print(r);
        if (r.body?.users?.isEmpty ?? true) {
          showCupertinoModalSheet(
              context: ctx,
              builder: (_) => AddStaffView(
                  null, null, null, null, null, true, null, stafffilter,
                  phonenumber: add91(phoneNumber.substring(2))));
        } else {
          showCupertinoModalSheet(
            context: ctx,
            builder: (_) => AddStaffView(
              r.body?.users?.first.name,
              r.body?.users?.first.dateOfBirth,
              r.body?.users?.first.gender,
              r.body?.users?.first.profession,
              r.body?.users?.first.profileImage,
              false,
              r.body?.users?.first.id,
              stafffilter,
              phonenumber: add91(phoneNumber.substring(2)),
            ),
          );
        }
        notifyListeners();
      });
    });
  }

// Add staff

  bool _lodingaddstaff = false;
  bool get lodingaddstaff => _lodingaddstaff;
  Future<void> addStaff(
      BuildContext ctx, AddStaffReq req, GetStaffListReq? stafffilter) {
    _lodingaddstaff = true;
    notifyListeners();
    return _staffRepo.addStaff(req).then((value) {
      _lodingaddstaff = false;
      notifyListeners();
      value.fold((l) {
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(l.message ?? "")));
      }, (r) {
        ctx.pop();
        ctx.pop();
        if (stafffilter != null) {
          getstafflist(ctx, stafffilter);
        }
      });
    });
  }

// edit staff
  bool _lodingeditstaff = false;
  bool get lodingeditstaff => _lodingeditstaff;
  Future<void> editStaff(
      BuildContext ctx, EditStaffReq req, GetStaffListReq? memberfilter) {
    _lodingeditstaff = true;
    notifyListeners();
    return _staffRepo.editStaff(req).then((value) {
      _lodingeditstaff = false;
      notifyListeners();
      value.fold((l) {
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(l.message ?? "")));
      }, (r) {
        staffdetails(ctx, req.userId!);
        if (memberfilter != null) {
          getstafflist(ctx, memberfilter);
        }
      });
    });
  }

// delete staff
  Future<void> deleteStaff(
      BuildContext ctx, String uid, GetStaffListReq? stafffilter) {
    BuildContext? dcontext;
    showCupertinoDialog(
      context: ctx,
      barrierDismissible: true,
      builder: (BuildContext context) {
        dcontext = context;
        return SizedBox(
          width: 100,
          height: 100,
          child: CupertinoDialogAction(
            child: Container(
              height: 60,
              width: 80,
              decoration: BoxDecoration(
                color: lightBlack,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const CupertinoActivityIndicator(
                radius: 13,
              ),
            ),
          ),
        );
      },
    );
    return _staffRepo.deleteStaff(uid).then((value) {
      Navigator.pop(dcontext!);
      value.fold((l) {
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(l.message ?? "")));
      }, (r) {
        if (stafffilter != null) {
          getstafflist(ctx, stafffilter);
        }
        ctx.pop();
        if (ctx.canPop()) ctx.pop();
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(r.message ?? "")));
      });
    });
  }

// get staff details

  GetStaffDetailsRes? _staffDetailsRes;
  GetStaffDetailsRes? get staffDetailsRes => _staffDetailsRes;

  bool _lodingstaffdetails = false;
  bool get lodingstaffdetails => _lodingstaffdetails;

  Future<void> staffdetails(BuildContext ctx, String uid) {
    _lodingstaffdetails = true;
    notifyListeners();
    return _staffRepo.staffDetails(uid).then((value) {
      _lodingstaffdetails = false;
      notifyListeners();
      value.fold((l) {
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(l.message ?? "")));
      }, (r) {
        _staffDetailsRes = r;
        notifyListeners();
      });
    });
  }

// staff list with filter

  GetStafflistRes? _geStaffListRes;
  GetStafflistRes? get geStaffListRes => _geStaffListRes;

  bool _lodingstafflist = false;
  bool get lodingstafflist => _lodingstafflist;

  Future<void> getstafflist(BuildContext ctx, GetStaffListReq req) {
    _lodingstafflist = true;
    notifyListeners();
    final GetStaffListReq tempreq = GetStaffListReq(
      status: req.status,
      page: req.page,
      limit: req.limit,
    );
    notifyListeners();
    return _staffRepo.getstafflist(tempreq).then((value) {
      _lodingstafflist = false;
      notifyListeners();
      value.fold((l) {
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(l.message ?? "")));
      }, (r) {
        _geStaffListRes = r;
        notifyListeners();
      });
    });
  }

//* student =================>

// search member
  bool _loadingSearchMember = false;
  bool get loadingSearchMember => _loadingSearchMember;

  GetMemberListRes? _getMemberListRes;
  GetMemberListRes? get getMemberListRes => _getMemberListRes;

  Future<void> getmemberlist(BuildContext ctx, GetMemberListReq req) {
    _loadingSearchMember = true;
    notifyListeners();

    notifyListeners();
    return _memberRepo.getmemberlist(req).then((value) {
      _loadingSearchMember = false;
      notifyListeners();
      value.fold((l) {
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(l.message ?? "")));
      }, (r) {
        _getMemberListRes = r;
        notifyListeners();
      });
    });
  }

  bool _lodingaddStudent = false;
  bool get lodingaddStudent => _lodingaddStudent;
// add student
  Future<void> addStudent(BuildContext ctx, AddStudentReq req, String staffuid,
      GetStaffListReq? stafffilter) {
    _lodingaddStudent = true;
    notifyListeners();
    return _staffRepo.addStudent(req).then((value) {
      _lodingaddStudent = false;
      notifyListeners();
      value.fold((l) {
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(l.message ?? "")));
      }, (r) {
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(r.message ?? "")));
        getstudentlist(ctx, staffuid);
        if (stafffilter != null) {
          getstafflist(ctx, stafffilter);
        }
        ctx.pop();
      });
    });
  }

// assign Trainer
  bool _lodingassignTrainer = false;
  bool get lodingassignTrainer => _lodingassignTrainer;

  Future<void> assignTrainer(BuildContext ctx, AddStudentReq req, String memuid,
      GetMemberListReq? memberfilter) {
    _lodingassignTrainer = true;
    notifyListeners();
    return _staffRepo.addStudent(req).then((value) {
      _lodingassignTrainer = false;
      notifyListeners();
      value.fold((l) {
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(l.message ?? "")));
      }, (r) {
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(r.message ?? "")));
        ref.read(memberViewModelProvider).memberdetails(ctx, memuid);
        getcoachlist(ctx, memuid);
        if (memberfilter != null) {
          ref.read(memberViewModelProvider).getmemberlist(ctx, memberfilter);
        }
        ctx.pop();
      });
    });
  }

// remove student
  Future<void> removeStudent(BuildContext ctx, RemoveStudentReq req,
      String staffuid, GetStaffListReq? stafffilter) {
    BuildContext? dcontext;
    showCupertinoDialog(
      context: ctx,
      barrierDismissible: true,
      builder: (BuildContext context) {
        dcontext = context;
        return SizedBox(
          width: 100,
          height: 100,
          child: CupertinoDialogAction(
            child: Container(
              height: 60,
              width: 80,
              decoration: BoxDecoration(
                color: lightBlack,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const CupertinoActivityIndicator(
                radius: 13,
              ),
            ),
          ),
        );
      },
    );
    notifyListeners();
    return _staffRepo.removeStudent(req).then((value) {
      Navigator.pop(dcontext!);
      notifyListeners();
      value.fold((l) {
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(l.message ?? "")));
      }, (r) {
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(r.message ?? "")));
        getstudentlist(ctx, staffuid);
        if (stafffilter != null) {
          getstafflist(ctx, stafffilter);
        }
        ctx.pop();
      });
    });
  }

// get student list
  bool _lodinggetStudentList = false;
  bool get lodinggetStudentList => _lodinggetStudentList;
  GetStudentListRes? _getStudentListRes;
  GetStudentListRes? get getStudentListRes => _getStudentListRes;

  Future<void> getstudentlist(BuildContext ctx, String uid) {
    _lodinggetStudentList = true;
    notifyListeners();
    return _staffRepo.getstudentlist(uid).then((value) {
      _lodinggetStudentList = false;
      notifyListeners();
      value.fold((l) {
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(l.message ?? "")));
      }, (r) {
        _getStudentListRes = r;
        notifyListeners();
      });
    });
  }

// get coach
  bool _lodinggetCoach = false;
  bool get lodinggetCoach => _lodinggetCoach;
  GetCoachRes? _getCoachRes;
  GetCoachRes? get getCoachRes => _getCoachRes;
  Future<void> getcoachlist(BuildContext ctx, String uid) {
    _lodinggetCoach = true;
    notifyListeners();
    return _staffRepo.getcoachlist(uid).then((value) {
      _lodinggetCoach = false;
      notifyListeners();
      value.fold((l) {
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(l.message ?? "")));
      }, (r) {
        _getCoachRes = r;
        notifyListeners();
      });
    });
  }
}
