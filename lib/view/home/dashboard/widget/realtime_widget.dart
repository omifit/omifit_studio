import 'package:flutter/cupertino.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/home/dashboard/dialog/activemem_dialog.dart';
import 'package:omifit/view/home/dashboard/dialog/livecount_dialog.dart';
import 'package:omifit/view/home/dashboard/dialog/riskmem_dialog.dart';
import 'package:omifit/view/home/dashboard/dialog/totalmem_dialog.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class RealTimeMemberWidget extends StatelessWidget {
  final double width;
  const RealTimeMemberWidget({super.key, this.width = double.infinity});

  @override
  Widget build(BuildContext context) {
    return ResponsiveDashboard.isMobile(context)
        ? Container(
            width: width,
            decoration: BoxDecoration(
              color: darkBlack,
              borderRadius: BorderRadius.circular(30),
            ),
            child: PaddedColumn(
                crossAxisAlignment: CrossAxisAlignment.start,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                children: [
                  ListTile(
                    title: const Text(
                      "Realtime",
                      style: TextStyle(
                        color: kWhite,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    subtitle: Row(
                      children: [
                        Icon(
                          Icons.circle,
                          color: const Color(0xff14AE5C),
                          size: 13.sp,
                        ),
                        gapW4,
                        const Expanded(
                          child: Text(
                            "Updating live",
                            style: TextStyle(
                              color: kGrey,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: kGrey.withOpacity(0.5),
                    thickness: 0.5,
                  ),
                  ListTile(
                      title: Text(
                        "12",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: kWhite,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      subtitle: Text(
                        "Live Members",
                        style: TextStyle(
                          color: kGrey,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      trailing: IconButton(
                          onPressed: () {
                            WoltModalSheet.show(
                                context: context,
                                minDialogWidth: 0.6.sw,
                                maxDialogWidth: 0.6.sw,
                                pageListBuilder: (BuildContext context) {
                                  return [LiveCountMemberDialog.build(context)];
                                });
                          },
                          icon: const Icon(CupertinoIcons.arrow_right_circle,
                              color: primaryColor))),
                  ListTile(
                    title: Text(
                      "92",
                      style: TextStyle(
                        color: kWhite,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    subtitle: Text(
                      "Active Members",
                      style: TextStyle(
                        color: kGrey,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.arrow_right_circle,
                            color: primaryColor)),
                  ),
                  ListTile(
                    title: Text(
                      "50",
                      style: TextStyle(
                        color: kWhite,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    subtitle: Text(
                      "Risk Members",
                      style: TextStyle(
                        color: kGrey,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.arrow_right_circle,
                            color: primaryColor)),
                  ),
                  ListTile(
                    title: Text(
                      "12k",
                      style: TextStyle(
                        color: kWhite,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    subtitle: Text(
                      "Total Members",
                      style: TextStyle(
                        color: kGrey,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.arrow_right_circle,
                            color: primaryColor)),
                  ),
                ]))
        : Container(
            width: width,
            decoration: BoxDecoration(
              color: darkBlack,
              borderRadius: BorderRadius.circular(30),
            ),
            child: PaddedColumn(
              crossAxisAlignment: CrossAxisAlignment.start,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              children: [
                ListTile(
                  title: const Text(
                    "Realtime",
                    style: TextStyle(
                      color: kWhite,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(
                        Icons.circle,
                        color: const Color(0xff14AE5C),
                        size:
                            ResponsiveDashboard.isMobile(context) ? 12.sp : 14,
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          "Updating live",
                          style: TextStyle(
                            color: kGrey,
                            fontSize: ResponsiveDashboard.isMobile(context)
                                ? 12.sp
                                : 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: kGrey.withOpacity(0.5),
                  thickness: 0.5,
                ),
                const ListTile(
                  title: Text(
                    "12",
                    style: TextStyle(
                      color: kWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  subtitle: Text(
                    "Live Members",
                    style: TextStyle(
                      color: kGrey,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    WoltModalSheet.show(
                        context: context,
                        minDialogWidth: 0.6.sw,
                        maxDialogWidth: 0.6.sw,
                        pageListBuilder: (BuildContext context) {
                          return [LiveCountMemberDialog.build(context)];
                        });
                  },
                  child: const Text(
                    "SEE LIVE COUNT",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const ListTile(
                  title: Text(
                    "92",
                    style: TextStyle(
                      color: kWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  subtitle: Text(
                    "Active Members",
                    style: TextStyle(
                      color: kGrey,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    WoltModalSheet.show(
                        context: context,
                        minDialogWidth: 0.6.sw,
                        maxDialogWidth: 0.6.sw,
                        pageListBuilder: (BuildContext context) {
                          return [ActiveMemberDialog.build(context)];
                        });
                  },
                  child: const Text(
                    "SEE MORE",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const ListTile(
                  title: Text(
                    "92",
                    style: TextStyle(
                      color: kWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  subtitle: Text(
                    "Paused Members",
                    style: TextStyle(
                      color: kGrey,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    WoltModalSheet.show(
                        context: context,
                        minDialogWidth: 0.6.sw,
                        maxDialogWidth: 0.6.sw,
                        pageListBuilder: (BuildContext context) {
                          return [ActiveMemberDialog.build(context)];
                        });
                  },
                  child: Text(
                    "SEE MORE",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize:
                          ResponsiveDashboard.isMobile(context) ? 14.sp : 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const ListTile(
                  title: Text(
                    "50",
                    style: TextStyle(
                      color: kWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  subtitle: Text(
                    "Risk Members",
                    style: TextStyle(
                      color: kGrey,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    WoltModalSheet.show(
                        context: context,
                        minDialogWidth: 0.6.sw,
                        maxDialogWidth: 0.6.sw,
                        pageListBuilder: (BuildContext context) {
                          return [RiskMemberDialog.build(context)];
                        });
                  },
                  child: const Text(
                    "SEE MORE",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const ListTile(
                  title: Text(
                    "12k",
                    style: TextStyle(
                      color: kWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  subtitle: Text(
                    "Total Members",
                    style: TextStyle(
                      color: kGrey,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    WoltModalSheet.show(
                        context: context,
                        minDialogWidth: 0.6.sw,
                        maxDialogWidth: 0.6.sw,
                        pageListBuilder: (BuildContext context) {
                          return [TotalMemberDialog.build(context)];
                        });
                  },
                  child: const Text(
                    "SEE MORE",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
