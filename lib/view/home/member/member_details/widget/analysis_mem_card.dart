import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/widget/imageicon/profile_img.dart';
import 'package:pull_down_button/pull_down_button.dart';

class AnalysisMemCard extends StatelessWidget {
  const AnalysisMemCard({super.key});

  @override
  Widget build(BuildContext context) {
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
                ResponsiveMemberDetails.isMobile(context) ? 10 : 25,
            itemCount: 5,
            itemBuilder: (context, index) {
              return index == 0
                  ? Container(
                      padding: EdgeInsets.symmetric(
                        horizontal:
                            ResponsiveMemberDetails.isMobile(context) ? 12 : 12,
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
                              leading: const ProfileImg(
                                  url: "https://i.imgur.com/UnWWlu3.png"),
                              trailing: PullDownButton(
                                routeTheme: PullDownMenuRouteTheme(
                                  backgroundColor:
                                      const Color.fromARGB(73, 72, 72, 72),
                                  borderRadius: BorderRadius.circular(10),
                                  shadow: BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 10,
                                  ),
                                  width: 150,
                                  accessibilityWidth: 200,
                                ),
                                itemBuilder: (context) => [
                                  PullDownMenuItem(
                                    onTap: () {},
                                    title: 'Change Trainer',
                                    icon: CupertinoIcons.profile_circled,
                                  ),
                                  PullDownMenuItem(
                                    onTap: () {},
                                    title: 'Remove Trainer',
                                    isDestructive: true,
                                    icon: CupertinoIcons.delete,
                                  ),
                                ],
                                buttonBuilder: (context, showMenu) =>
                                    BouncingWidget(
                                  onPressed: showMenu,
                                  child: const Icon(
                                    CupertinoIcons.pencil,
                                    color: kWhite,
                                  ),
                                ),
                              )),
                          ListTile(
                            visualDensity: VisualDensity.compact,
                            dense: true,
                            contentPadding: EdgeInsets.zero,
                            title: Text(
                              "Yadev Maji",
                              style: TextStyle(
                                color: const Color(0xffB6B6B7),
                                fontSize: ResponsiveDashboard.isMobile(context)
                                    ? 12.sp
                                    : 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            subtitle: Text(
                              "Trainner",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 129, 129, 130),
                                fontSize: ResponsiveDashboard.isMobile(context)
                                    ? 12.sp
                                    : 13,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
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
