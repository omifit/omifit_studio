import 'package:cupertino_modal_sheet/cupertino_modal_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:omifit_studio/utils/utils.dart';
import 'package:omifit_studio/view/organization/plan/dialog/add_plan_dialog.dart';
import 'package:omifit_studio/view/organization/plan/dialog/edit_plan_dialog.dart';
import 'package:omifit_studio/view/organization/plan/plan_view_model.dart';
import 'package:omifit_studio/view/organization/plan/widget/plantile_widget.dart';

class TabletPlanView extends ConsumerStatefulWidget {
  const TabletPlanView({super.key});

  @override
  ConsumerState<TabletPlanView> createState() => _TabletPlanViewState();
}

class _TabletPlanViewState extends ConsumerState<TabletPlanView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _gedata();
    });
  }

  void _gedata() {
    ref.read(planViewModelProvider).getplanlist(context);
  }

  @override
  Widget build(BuildContext context) {
    final PlanViewModelProvider planViewModel =
        ref.watch(planViewModelProvider);
    return Scaffold(
      body: SingleChildScrollView(
        child: PaddedColumn(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          children: [
            gapH10,
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text("Plans",
                  style: TextStyle(
                      color: kWhite,
                      fontSize: 18,
                      fontWeight: FontWeight.w800)),
              trailing: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(15),
                      elevation: 0,
                      backgroundColor: primaryColor),
                  onPressed: () {
                    HapticFeedback.lightImpact();
                    showCupertinoModalSheet(
                        fullscreenDialog: false,
                        context: context,
                        builder: (_) => const AddPlanDialog());
                  },
                  icon: const Icon(
                    CupertinoIcons.plus_circle,
                    color: kWhite,
                  ),
                  label: const Text(
                    "Add Plan",
                    style: TextStyle(
                        color: kWhite,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  )),
            ),
            const Divider(color: kGrey, thickness: 0.2),
            gapH10,
            ...List.generate(
                planViewModel.getPlanListRes?.body?.organizationPlans?.length ??
                    0,
                (index) => Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: PlanTile(
                      onTap: () {
                        HapticFeedback.lightImpact();
                        showCupertinoModalSheet(
                            fullscreenDialog: false,
                            context: context,
                            builder: (_) => EditPlanDialog(
                                  pid: planViewModel.getPlanListRes?.body
                                          ?.organizationPlans?[index].id ??
                                      "",
                                ));
                      },
                      tittle: planViewModel.getPlanListRes?.body
                              ?.organizationPlans?[index].name ??
                          "N/A",
                      price: (planViewModel.getPlanListRes?.body
                                  ?.organizationPlans?[index].price ??
                              "N/A")
                          .toString(),
                      description: planViewModel.getPlanListRes?.body
                              ?.organizationPlans?[index].description ??
                          "N/A",
                      durationValue: (planViewModel.getPlanListRes?.body
                                  ?.organizationPlans?[index].duration?.value ??
                              0)
                          .toString(),
                      durationUnit: planViewModel.getPlanListRes?.body
                              ?.organizationPlans?[index].duration?.unit ??
                          "",
                      isActive: planViewModel.getPlanListRes?.body
                              ?.organizationPlans?[index].isActive ??
                          false,
                    ))),
            gapH60,
          ],
        ),
      ),
    );
  }
}
