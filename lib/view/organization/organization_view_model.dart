import 'package:flutter/cupertino.dart';
import 'package:omifit_studio/data/home/member/member_repo_impl.dart';
import 'package:omifit_studio/data/home/member/model/get_memberlist_model.dart';
import 'package:omifit_studio/data/organization/model/createorg_model.dart';
import 'package:omifit_studio/data/organization/model/orglistbyuser_model.dart';
import 'package:omifit_studio/data/organization/model/selectorg_model.dart';
import 'package:omifit_studio/data/organization/organization_repo_impl.dart';
import 'package:omifit_studio/services/shared_preference_service.dart';
import 'package:omifit_studio/utils/utils.dart';

final organizationViewModelProvider =
    ChangeNotifierProvider((ref) => OrganizationViewModel(ref: ref));

class OrganizationViewModel extends ChangeNotifier {
  Ref ref;
  OrganizationViewModel({required this.ref});

  final _orgRepo = OrganizationRepoImpl();
  final _memberRepo = MemberRepoImpl();

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  GlobalKey<ScaffoldState> get key => _key;
  int selectedIndex = 0;
  void openDrawer() {
    _key.currentState!.openDrawer();
  }

  void closeDrawer() {
    _key.currentState!.openEndDrawer();
  }

  void onDestinationSelected(int index, BuildContext context) {
    selectedIndex = index;
    Responsive.isMobile(context)
        ? closeDrawer()
        : Future.delayed(const Duration(milliseconds: 110), () {
            closeDrawer();
          });
    notifyListeners();
  }

  // create org (Apis)
  bool _lodingcreateorg = false;
  bool get lodingcreateorg => _lodingcreateorg;
  Future<void> createOrg(CreateorgReq createorgReq, BuildContext ctx) async {
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

    _lodingcreateorg = true;
    notifyListeners();
    await _orgRepo.createorg(createorgReq).then((value) {
      Navigator.pop(dcontext!);
      _lodingcreateorg = false;
      notifyListeners();
      value.fold((l) {
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(l.message ?? "")));
      }, (r) {
        orgListByUser(ctx);
        ctx.pop();
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(r.message ?? "")));
      });
    });
  }

  // selected org  (Apis)
  Future<void> selectOrg(SelectorgReq selectorgReq, BuildContext ctx) async {
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
    await _orgRepo.selectorg(selectorgReq).then((value) {
      Navigator.pop(dcontext!);
      notifyListeners();
      value.fold((l) {
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(l.message ?? "")));
      }, (r) {
        SharedPreferenceService.setToken(r.body?.token).then((value) {
          ctx.goNamed(AppRoute.home.name);
        });
      });
    });
  }

  // org list by user (Apis)
  bool _lodingorglistbyuser = false;
  bool get lodingorglistbyuser => _lodingorglistbyuser;
  OrglistbyuserRes? _orglistbyuserRes;
  OrglistbyuserRes? get orglistbyuserRes => _orglistbyuserRes;

  Future<void> orgListByUser(BuildContext ctx) async {
    _lodingorglistbyuser = true;
    notifyListeners();
    await _orgRepo.orglistbyuser().then((value) {
      _lodingorglistbyuser = false;
      notifyListeners();
      value.fold((l) {
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(l.message ?? "")));
      }, (r) {
        _orglistbyuserRes = r;
        notifyListeners();
      });
    });
  }

  // search member apis
  bool _lodingsearchmember = false;
  bool get lodingsearchmember => _lodingsearchmember;
  GetMemberListRes? _getMemberListRes;
  GetMemberListRes? get getMemberListRes => _getMemberListRes;

  Future<void> searchMember(GetMemberListReq req, BuildContext ctx) async {
    _lodingsearchmember = true;
    notifyListeners();
    await _memberRepo.getmemberlist(req).then((value) {
      _lodingsearchmember = false;
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
}
