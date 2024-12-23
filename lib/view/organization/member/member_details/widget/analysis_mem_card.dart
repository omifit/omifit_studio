import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:omifit_studio/data/home/staff/model/get_stafflist_model.dart';
import 'package:omifit_studio/utils/parse.dart';
import 'package:omifit_studio/utils/utils.dart';
import 'package:omifit_studio/view/organization/staff/staff_view_model.dart';
import 'package:omifit_studio/widget/imageicon/profile_img.dart';
import 'package:pull_down_button/pull_down_button.dart';

class AnalysisMemCard extends ConsumerStatefulWidget {
  final String uid;
  final Function() onAddTrainer;
  const AnalysisMemCard(
      {super.key, required this.uid, required this.onAddTrainer});

  @override
  ConsumerState<AnalysisMemCard> createState() => _AnalysisMemCardState();
}

class _AnalysisMemCardState extends ConsumerState<AnalysisMemCard> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(staffViewModelProvider).getcoachlist(context, widget.uid);
      ref.read(staffViewModelProvider).getstafflist(
          context,
          const GetStaffListReq(
            page: 1,
            limit: 700,
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    final StaffViewModel staffViewModel = ref.watch(staffViewModelProvider);
    return Container(
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
          const ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text("Analysis",
                style: TextStyle(
                    color: kWhite, fontSize: 16, fontWeight: FontWeight.w800)),
          ),
          const Divider(color: kGrey, thickness: 0.2),
          gapH10,
          AlignedGridView.count(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: MediaQuery.of(context).size.width > 1400
                ? 5 // desktop
                : MediaQuery.of(context).size.width > 700
                    ? 3 // tablet
                    : 1, // tablet bg
            mainAxisSpacing:
                ResponsiveMemberDetails.isMobile(context) ? 10 : 25,
            crossAxisSpacing:
                ResponsiveMemberDetails.isMobile(context) ? 10 : 20,
            itemCount: 5,
            itemBuilder: (context, index) {
              return index == 0
                  ? (staffViewModel.getCoachRes?.body?.coaches?.isEmpty ?? true)
                      ? BouncingWidget(
                          duration: const Duration(milliseconds: 100),
                          onPressed: widget.onAddTrainer,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 6,
                              horizontal:
                                  Responsive.isMobile(context) ? 12 : 18,
                            ),
                            decoration: BoxDecoration(
                              color: lightBlack,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                const ListTile(
                                    visualDensity: VisualDensity.compact,
                                    contentPadding: EdgeInsets.zero,
                                    leading: Icon(
                                      HugeIcons.strokeRoundedAddTeam,
                                      color: kWhite,
                                      size: 28,
                                    )),
                                ListTile(
                                  visualDensity: VisualDensity.compact,
                                  dense: true,
                                  contentPadding: EdgeInsets.zero,
                                  title: Text(
                                    "Assign a Trainer",
                                    style: TextStyle(
                                      color: kWhite,
                                      fontSize: Responsive.isMobile(context)
                                          ? 12.sp
                                          : 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  subtitle: Text(
                                    "select a trainer to assign",
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                          169, 171, 171, 171),
                                      fontSize: Responsive.isMobile(context)
                                          ? 12.sp
                                          : 13,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      : Container(
                          padding: EdgeInsets.symmetric(
                            horizontal:
                                ResponsiveMemberDetails.isMobile(context)
                                    ? 12
                                    : 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: lightBlack,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                visualDensity: VisualDensity.compact,
                                contentPadding: EdgeInsets.zero,
                                leading: ProfileImg(
                                  url: (staffViewModel
                                                  .getCoachRes
                                                  ?.body
                                                  ?.coaches
                                                  ?.first
                                                  .employeeDetails
                                                  ?.profileImage ==
                                              null ||
                                          staffViewModel
                                                  .getCoachRes
                                                  ?.body
                                                  ?.coaches
                                                  ?.first
                                                  .employeeDetails
                                                  ?.profileImage ==
                                              '')
                                      ? damiProfile(
                                          stringTogender(staffViewModel
                                              .getCoachRes
                                              ?.body
                                              ?.coaches
                                              ?.first
                                              .employeeDetails
                                              ?.gender),
                                          staffViewModel
                                                  .getCoachRes
                                                  ?.body
                                                  ?.coaches
                                                  ?.first
                                                  .employeeDetails
                                                  ?.dateOfBirth ??
                                              "")
                                      : staffViewModel
                                          .getCoachRes!
                                          .body!
                                          .coaches!
                                          .first
                                          .employeeDetails!
                                          .profileImage!,
                                ),
                              ),
                              ListTile(
                                  visualDensity: VisualDensity.compact,
                                  dense: true,
                                  contentPadding: EdgeInsets.zero,
                                  title: Text(
                                    staffViewModel.getCoachRes?.body?.coaches
                                            ?.first.employeeDetails?.name ??
                                        "",
                                    style: TextStyle(
                                      color: const Color(0xffB6B6B7),
                                      fontSize:
                                          ResponsiveDashboard.isMobile(context)
                                              ? 12.sp
                                              : 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  subtitle: Text(
                                    "View all trainers",
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 129, 129, 130),
                                      fontSize:
                                          ResponsiveDashboard.isMobile(context)
                                              ? 12.sp
                                              : 13,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  trailing: PullDownButton(
                                    routeTheme: PullDownMenuRouteTheme(
                                      backgroundColor:
                                          const Color.fromARGB(73, 72, 72, 72),
                                      borderRadius: BorderRadius.circular(10),
                                      shadow: BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        blurRadius: 10,
                                      ),
                                      width: 200,
                                      accessibilityWidth: 200,
                                    ),
                                    itemBuilder: (context) => [
                                      ...List.generate(
                                          staffViewModel.getCoachRes?.body
                                                  ?.coaches?.length ??
                                              0,
                                          (i) => PullDownMenuHeader(
                                                onTap: () {},
                                                title: staffViewModel
                                                        .getCoachRes
                                                        ?.body
                                                        ?.coaches?[i]
                                                        .employeeDetails
                                                        ?.name ??
                                                    "",
                                                leading: ProfileImg(
                                                  height: 20,
                                                  width: 20,
                                                  url: ((staffViewModel
                                                                  .getCoachRes
                                                                  ?.body
                                                                  ?.coaches?[i]
                                                                  .employeeDetails
                                                                  ?.profileImage ==
                                                              null ||
                                                          staffViewModel
                                                                  .getCoachRes
                                                                  ?.body
                                                                  ?.coaches?[i]
                                                                  .employeeDetails
                                                                  ?.profileImage ==
                                                              '')
                                                      ? damiProfile(
                                                          stringTogender(
                                                              staffViewModel
                                                                  .getCoachRes
                                                                  ?.body
                                                                  ?.coaches?[i]
                                                                  .employeeDetails
                                                                  ?.gender),
                                                          staffViewModel
                                                                  .getCoachRes
                                                                  ?.body
                                                                  ?.coaches?[i]
                                                                  .employeeDetails
                                                                  ?.dateOfBirth ??
                                                              "")
                                                      : staffViewModel
                                                          .getCoachRes!
                                                          .body!
                                                          .coaches![i]
                                                          .employeeDetails!
                                                          .profileImage!),
                                                ),
                                              ))
                                    ],
                                    buttonBuilder: (context, showMenu) =>
                                        IconButton(
                                      onPressed: showMenu,
                                      icon: const Icon(
                                        HugeIcons
                                            .strokeRoundedCircleArrowRight01,
                                        color: kWhite,
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        )
                  : Container(
                      padding: EdgeInsets.symmetric(
                        horizontal:
                            ResponsiveMemberDetails.isMobile(context) ? 12 : 10,
                        vertical:
                            ResponsiveMemberDetails.isMobile(context) ? 10 : 15,
                      ),
                      decoration: BoxDecoration(
                        color: getBgColor(index),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListTile(
                        title: Text(
                          "30",
                          style: TextStyle(
                            color: index == 1
                                ? kyellow
                                : index == 2
                                    ? kBlue
                                    : index == 3
                                        ? kGreen
                                        : index == 4
                                            ? kRed
                                            : kWhite,
                            fontSize: ResponsiveDashboard.isMobile(context)
                                ? 24.sp
                                : 30,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        subtitle: Text(
                          getTittle(index),
                          style: TextStyle(
                            color: getTittleColor(index),
                            fontSize: ResponsiveDashboard.isMobile(context)
                                ? 12.sp
                                : 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    );
            },
          ),
          gapH20,
        ],
      ),
    );
  }

  String getTittle(int index) {
    switch (index) {
      case 1:
        return "Attendance (days)";
      case 2:
        return "Total Hours Spent";
      case 3:
        return "Total Collection";
      case 4:
        return "Pending Payment";
      default:
        return "Daily Members";
    }
  }

  Color getTittleColor(int index) {
    switch (index) {
      case 1:
        return kyellow;
      case 2:
        return kBlue;
      case 3:
        return kGreen;
      case 4:
        return kRed;
      default:
        return kWhite;
    }
  }

  Color getBgColor(int index) {
    switch (index) {
      case 1:
        return kyellowbg;
      case 2:
        return kBluebg;
      case 3:
        return kGreenbg;
      case 4:
        return kRedbg;
      default:
        return kWhite;
    }
  }
}
