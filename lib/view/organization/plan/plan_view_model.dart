import 'package:flutter/cupertino.dart';
import 'package:omifit_studio/data/home/plan/model/create_plan_model.dart';
import 'package:omifit_studio/data/home/plan/model/edit_plan_model.dart';
import 'package:omifit_studio/data/home/plan/model/get_planlist_model.dart';
import 'package:omifit_studio/data/home/plan/model/plan_details_model.dart';
import 'package:omifit_studio/data/home/plan/plan_repo_impl.dart';
import 'package:omifit_studio/utils/utils.dart';

final planViewModelProvider =
    ChangeNotifierProvider((ref) => PlanViewModelProvider(ref: ref));

class PlanViewModelProvider extends ChangeNotifier {
  Ref ref;
  PlanViewModelProvider({required this.ref});
  final _planRepo = PlanRepoImpl();

  // Create plan
  bool _lodingcreateplan = false;
  bool get lodingcreateplan => _lodingcreateplan;
  Future<void> createplan(BuildContext ctx, CreatePlanReq createPlanReq) {
    _lodingcreateplan = true;
    notifyListeners();
    return _planRepo.createPlan(createPlanReq).then((value) {
      _lodingcreateplan = false;
      notifyListeners();
      value.fold((l) {
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(l.message ?? "")));
      }, (r) {
        ctx.pop();
        getplanlist(ctx);
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(r.message ?? "")));
      });
    });
  }

  // Get plan list
  GetPlanListRes? _getPlanListRes;
  GetPlanListRes? get getPlanListRes => _getPlanListRes;

  bool _lodingplanlist = false;
  bool get lodingplanlist => _lodingplanlist;

  Future<void> getplanlist(BuildContext ctx) {
    _lodingplanlist = true;
    notifyListeners();
    return _planRepo.getplanlist().then((value) {
      _lodingplanlist = false;
      notifyListeners();
      value.fold((l) {
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(l.message ?? "")));
      }, (r) {
        _getPlanListRes = r;
        notifyListeners();
      });
    });
  }

  // Delete plan
  Future<void> deleteplan(BuildContext ctx, String id) {
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
                color: const Color.fromARGB(246, 49, 49, 49),
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
    return _planRepo.deletePlan(id).then((value) {
      dcontext!.pop();
      notifyListeners();
      value.fold((l) {
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(l.message ?? "")));
      }, (r) {
        ctx.pop();
        ctx.pop();
        getplanlist(ctx);
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(r.message ?? "")));
      });
    });
  }

  // Edit plan
  bool _lodingeditplan = false;
  bool get lodingeditplan => _lodingeditplan;
  Future<void> editplan(BuildContext ctx, EditPlanReq req, String pid) {
    _lodingeditplan = true;
    notifyListeners();
    return _planRepo.editPlan(req, pid).then((value) {
      _lodingeditplan = false;
      notifyListeners();
      value.fold((l) {
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(l.message ?? "")));
      }, (r) {
        ctx.pop();
        getplanlist(ctx);
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(r.message ?? "")));
      });
    });
  }

  // plan details
  PlanDetailsRes? _planDetailsRes;
  PlanDetailsRes? get planDetailsRes => _planDetailsRes;

  bool _lodingplandetails = false;
  bool get lodingplandetails => _lodingplandetails;

  Future<void> plandetails(BuildContext ctx, String id) {
    _lodingplandetails = true;
    notifyListeners();
    return _planRepo.plansDetails(id).then((value) {
      _lodingplandetails = false;
      notifyListeners();
      value.fold((l) {
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(l.message ?? "")));
      }, (r) {
        _planDetailsRes = r;
        notifyListeners();
      });
    });
  }
}
