import 'package:cupertino_modal_sheet/cupertino_modal_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:omifit_studio/data/auth/auth_repo.dart';
import 'package:omifit_studio/data/auth/auth_repo_impl.dart';
import 'package:omifit_studio/data/home/member/member_repo.dart';
import 'package:omifit_studio/data/home/member/member_repo_impl.dart';
import 'package:omifit_studio/data/home/member/model/add_member_model.dart';
import 'package:omifit_studio/data/home/member/model/edit_member_model.dart';
import 'package:omifit_studio/data/home/member/model/get_member_details_model.dart';
import 'package:omifit_studio/data/home/member/model/get_memberlist_model.dart';
import 'package:omifit_studio/data/home/subscription/model/get_subscription_byuser_model.dart';
import 'package:omifit_studio/data/home/subscription/model/purchase_plan_model.dart';
import 'package:omifit_studio/data/home/subscription/subscription_repo.dart';
import 'package:omifit_studio/data/home/subscription/subscription_repo_impl.dart';
import 'package:omifit_studio/utils/parse.dart';
import 'package:omifit_studio/utils/utils.dart';
import 'package:omifit_studio/view/organization/member/add_member/add_member_view.dart';
import 'package:omifit_studio/view/organization/member/add_member/plan_picker_view.dart';

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
  Future<void> createmember(
      BuildContext ctx, AddMemberReq req, GetMemberListReq? memberfilter) {
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
        if (memberfilter != null) {
          getmemberlist(ctx, memberfilter);
        }
        showCupertinoModalSheet(
          context: ctx,
          builder: (context) =>
              PlanPickerView(uid: r.body?.memberProfile?.user ?? ""),
        );
      });
    });
  }

  // Delete Member

  Future<void> deletemember(
      BuildContext ctx, String uid, GetMemberListReq? memberfilter) {
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
        if (memberfilter != null) {
          getmemberlist(ctx, memberfilter);
        }
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
  Future<void> editmember(
      BuildContext ctx, EditMemberReq req, GetMemberListReq? memberfilter) {
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
        if (memberfilter != null) {
          getmemberlist(ctx, memberfilter);
        }
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
    final GetMemberListReq tempreq = GetMemberListReq(
        startDate: getDateRange(req.joiningDate).first,
        endDate: getDateRange(req.joiningDate).last,
        status: req.status,
        page: req.page,
        limit: req.limit);
    notifyListeners();
    return _memberRepo.getmemberlist(tempreq).then((value) {
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

  Future<void> searchUser(
      BuildContext ctx, String phoneNumber, GetMemberListReq? memberfilter) {
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
              builder: (_) => AddMemberView(
                  null, null, null, null, null, true, null, memberfilter,
                  phonenumber: add91(phoneNumber.substring(2))));
        } else {
          showCupertinoModalSheet(
            context: ctx,
            builder: (_) => AddMemberView(
              r.body?.users?.first.name,
              r.body?.users?.first.dateOfBirth,
              r.body?.users?.first.gender,
              r.body?.users?.first.profession,
              r.body?.users?.first.profileImage,
              false,
              r.body?.users?.first.id,
              memberfilter,
              phonenumber: add91(phoneNumber.substring(2)),
            ),
          );
        }
        notifyListeners();
      });
    });
  }

  //* ========================== Subscription

  // buy subscription
  bool _lodingBuySubscription = false;
  bool get lodingBuySubscription => _lodingBuySubscription;

  Future<void> buySubscription(BuildContext ctx, List<SelectedPlan> req) {
    _lodingBuySubscription = true;
    final PurchasePlanReq sreq = PurchasePlanReq(
        subscriptionDetails: req
            .map((e) => SubscriptionDetail(
                userId: e.userId,
                planId: e.planId,
                totalAmount: e.orginalPlanAmount,
                paidAmount: e.paidAmount,
                // paymentForm: e.paymentForm,
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

  // all subscription for particular user
  bool _lodingsubscriptionbyUser = false;
  bool get lodingsubscriptionbyUser => _lodingsubscriptionbyUser;
  GetallsubscriptionByUserRes? _getallsubscriptionByUserRes;
  GetallsubscriptionByUserRes? get getallsubscriptionByUserRes =>
      _getallsubscriptionByUserRes;
  Future<void> getallsubscriptionbyuser(
      BuildContext ctx, String user, String status) {
    _lodingsubscriptionbyUser = true;
    notifyListeners();
    return _subscriptionRepo
        .getallsubscriptionbyuser(user, status)
        .then((value) {
      _lodingsubscriptionbyUser = false;
      notifyListeners();
      value.fold((l) {
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(l.message ?? "")));
      }, (r) {
        _getallsubscriptionByUserRes = r;
        notifyListeners();
      });
    });
  }

  // remove subscription

  // edit subscription
}

List<DateTime?> getDateRange(String? range) {
  final DateTime today = DateTime.now();
  final DateFormat formatter = DateFormat('d MMM yyyy');

  if (range == null || range.toLowerCase() == "lifetime") {
    return [null, null]; // Return null for both start and end
  }

  switch (range.toLowerCase()) {
    case "today":
      return [today, today];
    case "yesterday":
      final DateTime yesterday = today.subtract(const Duration(days: 1));
      return [yesterday, yesterday];
    case "last 7 days":
      final DateTime last7Days = today.subtract(const Duration(days: 6));
      return [last7Days, today];
    case "last 28 days":
      final DateTime last28Days = today.subtract(const Duration(days: 27));
      return [last28Days, today];
    default:
      // Custom range: e.g., "7 Nov - 18 Nov 2024"
      final List<String> parts = range.split(' - ');
      if (parts.length == 2) {
        try {
          final DateTime start = formatter.parse('${parts[0]} ${today.year}');
          final DateTime end = formatter.parse(parts[1]);
          return [start, end];
        } catch (e) {
          throw ArgumentError("Invalid date range format: $range");
        }
      }
      throw ArgumentError("Invalid date range format: $range");
  }
}
