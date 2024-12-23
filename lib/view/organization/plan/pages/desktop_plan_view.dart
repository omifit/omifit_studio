import 'package:cupertino_modal_sheet/cupertino_modal_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:omifit_studio/utils/utils.dart';
import 'package:omifit_studio/view/organization/plan/dialog/add_plan_dialog.dart';
import 'package:omifit_studio/view/organization/plan/dialog/edit_plan_dialog.dart';
import 'package:omifit_studio/view/organization/plan/plan_view_model.dart';
import 'package:omifit_studio/view/organization/plan/widget/plantile_widget.dart';

class DesktopPlanView extends ConsumerStatefulWidget {
  const DesktopPlanView({super.key});

  @override
  ConsumerState<DesktopPlanView> createState() => _DesktopPlanViewState();
}

class _DesktopPlanViewState extends ConsumerState<DesktopPlanView> {
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
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          gapH20,
          Container(
            constraints: BoxConstraints(minHeight: 610.h),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: darkBlack,
              borderRadius: BorderRadius.all(Radius.circular(32)),
            ),
            child: PaddedColumn(
              crossAxisAlignment: CrossAxisAlignment.start,
              padding: const EdgeInsets.symmetric(horizontal: 25),
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
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        padding: const EdgeInsets.all(15),
                        elevation: 0,
                        backgroundColor:
                            const Color.fromRGBO(194, 117, 39, 0.2),
                      ),
                      onPressed: () {
                        showCupertinoModalSheet(
                            fullscreenDialog: false,
                            context: context,
                            builder: (_) => const AddPlanDialog());
                      },
                      icon: const Icon(CupertinoIcons.add_circled,
                          color: secondaryColor),
                      label: const Text(
                        "Create Plan",
                        style: TextStyle(
                            color: secondaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      )),
                ),
                const Divider(color: kGrey, thickness: 0.2),
                gapH10,
                AlignedGridView.count(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: MediaQuery.of(context).size.width > 1400
                      ? 4
                      : MediaQuery.of(context).size.width > 1000
                          ? 3
                          : 2,
                  mainAxisSpacing: 25,
                  crossAxisSpacing: 25,
                  itemCount: planViewModel
                          .getPlanListRes?.body?.organizationPlans?.length ??
                      0,
                  itemBuilder: (context, index) {
                    return PlanTile(
                      onTap: () {
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
                    );
                  },
                ),
                gapH25,
              ],
            ),
          ),
          gapH16,
        ],
      ),
    ));
  }
}
