import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/organization/plan/widget/add_plan_dialog.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class DesktopPlanView extends StatefulWidget {
  const DesktopPlanView({super.key});

  @override
  State<DesktopPlanView> createState() => _DesktopPlanViewState();
}

class _DesktopPlanViewState extends State<DesktopPlanView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: PaddedColumn(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          gapH20,
          Container(
            constraints: BoxConstraints(minHeight: 600.h),
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
                  title: const Text("Plan",
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
                        WoltModalSheet.show(
                            context: context,
                            barrierDismissible: false,
                            minDialogWidth: 750,
                            maxDialogWidth: 1000,
                            pageListBuilder: (BuildContext context) {
                              return [
                                AddPlanDialog.build(context),
                              ];
                            });
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
                          : MediaQuery.of(context).size.width > 600
                              ? 2
                              : 1,
                  mainAxisSpacing: 25,
                  crossAxisSpacing: 25,
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return DecoratedBox(
                      decoration: const BoxDecoration(
                        color: lightBlack,
                        borderRadius: BorderRadius.all(Radius.circular(26)),
                      ),
                      child: PaddedColumn(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        children: [
                          const ListTile(
                            contentPadding: EdgeInsets.zero,
                            visualDensity: VisualDensity.compact,
                            titleAlignment: ListTileTitleAlignment.center,
                            horizontalTitleGap: 0,
                            minVerticalPadding: 0,
                            trailing: CircleAvatar(
                              radius: 4,
                              backgroundColor: kGreen,
                            ),
                            title: Text("Gold Plan for 3 months",
                                style: TextStyle(
                                    color: kWhite,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600)),
                          ),
                          const Text("₹ 90",
                              style: TextStyle(
                                  color: kWhite,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700)),
                          gapH10,
                          const Text(
                              "We advertise on social media to drive local clients onto Cosmetropolis and directly to your profile",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 208, 208, 208),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400)),
                          gapH10,
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            decoration: const BoxDecoration(
                              color: kyellowbg,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                            ),
                            child: ListTile(
                                onTap: () {
                                  HapticFeedback.lightImpact();
                                },
                                contentPadding: EdgeInsets.zero,
                                title: const Text("Duration - 6 months",
                                    style: TextStyle(
                                        color: secondaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600)),
                                trailing: const Icon(
                                  CupertinoIcons.arrow_right,
                                  color: secondaryColor,
                                )),
                          ),
                          gapH12,
                        ],
                      ),
                    );
                  },
                ),
                gapH25,
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
