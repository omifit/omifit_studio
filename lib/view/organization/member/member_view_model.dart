import 'package:cupertino_modal_sheet/cupertino_modal_sheet.dart';
import 'package:omifit/data/home/member/member_repo.dart';
import 'package:omifit/data/home/member/member_repo_impl.dart';
import 'package:omifit/data/home/member/model/add_member_model.dart';
import 'package:omifit/data/home/member/model/edit_member_model.dart';
import 'package:omifit/data/home/member/model/get_member_details_model.dart';
import 'package:omifit/data/home/member/model/get_memberlist_model.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/organization/member/add_member/plan_picker_view.dart';

final memberViewModelProvider =
    ChangeNotifierProvider((ref) => MemberViewModel(ref: ref));

class MemberViewModel extends ChangeNotifier {
  Ref ref;
  MemberViewModel({required this.ref});
  final MemberRepo _memberRepo = MemberRepoImpl();

  //* ================> Member (ADD, EDIT, DELETE, DETAILS, LIST)

  // Add Member
  bool _lodingaddmember = false;
  bool get lodingaddmember => _lodingaddmember;
  Future<void> createmember(BuildContext ctx, AddMemberReq req) {
    _lodingaddmember = true;
    notifyListeners();
    return _memberRepo.createmember(req).then((value) {
      _lodingaddmember = false;
      notifyListeners();
      value.fold((l) {
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(l.message ?? "")));
      }, (r) {
        ctx.pop();
        ctx.pop();
        getmemberlist(ctx, const GetMemberListReq());
        showCupertinoModalSheet(
            context: ctx, builder: (context) => const PlanPickerView(uid: ""));
      });
    });
  }

  // Delete Member
  bool _lodingdeletemember = false;
  bool get lodingdeletemember => _lodingdeletemember;
  Future<void> deletemember(BuildContext ctx, String uid) {
    _lodingdeletemember = true;
    notifyListeners();
    return _memberRepo.deletemember(uid).then((value) {
      _lodingdeletemember = false;
      notifyListeners();
      value.fold((l) {
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(l.message ?? "")));
      }, (r) {
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(r.message ?? "")));
      });
    });
  }

  // Edit Member
  bool _lodingeditmember = false;
  bool get lodingeditmember => _lodingeditmember;
  Future<void> editmember(BuildContext ctx, EditMemberReq req) {
    _lodingeditmember = true;
    notifyListeners();
    return _memberRepo.editmember(req).then((value) {
      _lodingeditmember = false;
      notifyListeners();
      value.fold((l) {
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(l.message ?? "")));
      }, (r) {
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(r.message ?? "")));
      });
    });
  }

  // Member Details

  MemberDetailsRes? _memberDetailsRes;
  MemberDetailsRes? get memberDetailsRes => _memberDetailsRes;

  bool _lodingmemberdetails = false;
  bool get lodingmemberdetails => _lodingmemberdetails;

  Future<void> memberdetails(BuildContext ctx, String uid) {
    _lodingmemberdetails = true;
    notifyListeners();
    return _memberRepo.getmemberDetails(uid).then((value) {
      _lodingmemberdetails = false;
      notifyListeners();
      value.fold((l) {
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(l.message ?? "")));
      }, (r) {
        _memberDetailsRes = r;
        notifyListeners();
      });
    });
  }

  // Member List

  GetMemberListRes? _getMemberListRes;
  GetMemberListRes? get getMemberListRes => _getMemberListRes;

  bool _lodingmemberlist = false;
  bool get lodingmemberlist => _lodingmemberlist;

  Future<void> getmemberlist(BuildContext ctx, GetMemberListReq req) {
    _lodingmemberlist = true;
    notifyListeners();
    return _memberRepo.getmemberlist(req).then((value) {
      _lodingmemberlist = false;
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

  //* ==========================> Buy Subscription
}
