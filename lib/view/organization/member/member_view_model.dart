import 'package:cupertino_modal_sheet/cupertino_modal_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';
import 'package:omifit/data/auth/auth_repo.dart';
import 'package:omifit/data/auth/auth_repo_impl.dart';
import 'package:omifit/data/home/member/member_repo.dart';
import 'package:omifit/data/home/member/member_repo_impl.dart';
import 'package:omifit/data/home/member/model/add_member_model.dart';
import 'package:omifit/data/home/member/model/edit_member_model.dart';
import 'package:omifit/data/home/member/model/get_member_details_model.dart';
import 'package:omifit/data/home/member/model/get_memberlist_model.dart';
import 'package:omifit/data/home/subscription/model/purchase_plan_model.dart';
import 'package:omifit/data/home/subscription/subscription_repo.dart';
import 'package:omifit/data/home/subscription/subscription_repo_impl.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/organization/member/add_member/add_member_view.dart';
import 'package:omifit/view/organization/member/add_member/plan_picker_view.dart';

final memberViewModelProvider =
    ChangeNotifierProvider((ref) => MemberViewModel(ref: ref));

class MemberViewModel extends ChangeNotifier {
  Ref ref;
  MemberViewModel({required this.ref});

  final MemberRepo _memberRepo = MemberRepoImpl();
  final SubscriptionRepo _subscriptionRepo = SubscriptionRepoImpl();
  final AuthRepo _authRepo = AuthRepoImpl();
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
            context: ctx,
            builder: (context) =>
                PlanPickerView(uid: r.body?.memberProfile?.user ?? ""));
      });
    });
  }

  // Delete Member

  Future<void> deletemember(BuildContext ctx, String uid) {
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

    return _memberRepo.deletemember(uid).then((value) {
      Navigator.pop(dcontext!);
      value.fold((l) {
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(l.message ?? "")));
      }, (r) {
        getmemberlist(ctx, const GetMemberListReq());
        ctx.pop();
        if (ctx.canPop()) ctx.pop();
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
        memberdetails(ctx, req.userId!);
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

  //* Member List ================>

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

  //* ==========================> Search User
  bool _loadingSearchUser = false;
  bool get loadingSearchUser => _loadingSearchUser;

  Future<void> searchUser(BuildContext ctx, String phoneNumber) {
    _loadingSearchUser = true;
    notifyListeners();
    return _authRepo.searchUser(phoneNumber).then((value) {
      _loadingSearchUser = false;
      notifyListeners();
      value.fold((l) {}, (r) {
        if (r.body?.user?.isEmpty ?? true) {
          showCupertinoModalSheet(
              context: ctx,
              builder: (_) => AddMemberView(
                  null, null, null, null, null, true, null,
                  phonenumber: phoneNumber));
        } else {
          showCupertinoModalSheet(
            context: ctx,
            builder: (_) => AddMemberView(
              r.body?.user?.first.name,
              r.body?.user?.first.dateOfBirth,
              r.body?.user?.first.gender,
              r.body?.user?.first.profession,
              r.body?.user?.first.profileImage,
              false,
              r.body?.user?.first.id,
              phonenumber: phoneNumber,
            ),
          );
        }
        notifyListeners();
      });
    });
  }

  //* ==========================> Buy Subscription
  bool _lodingBuySubscription = false;
  bool get lodingBuySubscription => _lodingBuySubscription;

  Future<void> buySubscription(BuildContext ctx, List<SelectedPlan> req) {
    _lodingBuySubscription = true;
    final PurchasePlanReq sreq = PurchasePlanReq(
        subscriptionDetails: req
            .map((e) => SubscriptionDetail(
                userId: e.userId,
                planId: e.planId,
                totalAmount: e.totalAmount,
                paidAmount: e.paidAmount,
                paymentForm: e.paymentForm,
                membershipStartDate: e.membershipStartDate,
                membershipEndDate: e.membershipEndDate))
            .toList());
    notifyListeners();
    return _subscriptionRepo.purchasePlan(sreq).then((value) {
      _lodingBuySubscription = false;
      notifyListeners();
      value.fold((l) {
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(l.message ?? "")));
      }, (r) {
        ctx.pop();
        ctx.pop();
        showCupertinoModalSheet(
            context: ctx,
            builder: (context) {
              return Scaffold(
                backgroundColor: darkBlack,
                // appBar: AppBar(),
                body: PaddedColumn(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  padding: const EdgeInsets.symmetric(horizontal: 36),
                  children: [
                    LottieBuilder.asset(
                      'assets/animations/sucjson.json',
                      repeat: false,
                    ),
                    gapH12,
                    const SizedBox(
                      width: 400,
                      child: Text(
                        "Payment successfully",
                        style: TextStyle(
                          color: kGrey,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: FilledBtn(
                          radius: 50,
                          color: kGreen,
                          text: "Done",
                          onPressed: () {
                            ctx.pop();
                          }),
                    ),
                    gapH60,
                  ],
                ),
              );
            });

        notifyListeners();
      });
    });
  }
}
