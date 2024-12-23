import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:hovering/hovering.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:omifit_studio/utils/utils.dart';
import 'package:omifit_studio/widget/chips/chip_widget.dart';
import 'package:omifit_studio/widget/imageicon/profile_img.dart';
import 'package:pull_down_button/pull_down_button.dart';

class AssignedMemCard extends StatelessWidget {
  final String memid;
  final String profilePic;
  final String name;
  final String phone;
  final String? status;
  final String? assignDate;
  final Function()? onRemove;
  final Function()? onviewProfile;
  const AssignedMemCard({
    super.key,
    this.onRemove,
    this.onviewProfile,
    required this.memid,
    required this.profilePic,
    required this.name,
    required this.phone,
    this.assignDate,
    this.status,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveMember(
      mobile: InkWell(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 0),
          decoration: const BoxDecoration(
            color: darkBlack,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: ListTile(
              visualDensity: VisualDensity.compact,
              contentPadding: EdgeInsets.zero,
              leading: const ProfileImg(url: 'https://i.imgur.com/UnWWlu3.png'),
              title: Text('Ayush Maji',
                  style:
                      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600)),
              subtitle: Text('Inactive',
                  style: TextStyle(fontSize: 12.sp, color: kGrey)),
              trailing: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.more_vert))),
        ),
      ),
      tablet: InkWell(
        overlayColor: WidgetStateProperty.all(Colors.transparent),
        child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                color: darkBlack,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Column(
              children: [
                gapH10,
                const ListTile(
                  leading: ProfileImg(url: "https://i.imgur.com/UnWWlu3.png"),
                  title: Text(
                    "Ayush Maji",
                    style: TextStyle(
                      color: kWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text(
                    "ID-101",
                    style: TextStyle(
                        color: secondaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  trailing: Icon(Icons.more_vert_rounded),
                ),
                gapH10,
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Phone",
                            style: TextStyle(
                                color: kWhite,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          gapH5,
                          const Text(
                            "9749003015",
                            style: TextStyle(
                                color: kGrey,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Join Date",
                            style: TextStyle(
                                color: kWhite,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          gapH5,
                          const Text(
                            "25Jun 2001",
                            style: TextStyle(
                                color: kGrey,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Coach",
                            style: TextStyle(
                                color: kWhite,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          gapH5,
                          const Text(
                            "Ayush Maji",
                            style: TextStyle(
                                color: kGrey,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ChipWidget(
                              tittle: "Active",
                              color: kGreen,
                              bgColor: kGreenbg)
                        ],
                      ),
                    ),
                  ],
                ),
                gapH20,
              ],
            )),
      ),
      desktop: HoverContainer(
        hoverDecoration: BoxDecoration(
          color: const Color.fromARGB(18, 173, 162, 162),
          borderRadius: BorderRadius.circular(32),
        ),
        cursor: SystemMouseCursors.click,
        child: PaddedRow(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 30,
              child: Text(
                memid,
                style: const TextStyle(color: kWhite),
              ),
            ),
            SizedBox(
              width: 48,
              child: ProfileImg(
                url: profilePic,
                height: 48,
              ),
            ),
            SizedBox(
              width: 40.w,
              child: Text(
                name,
                style: const TextStyle(color: kWhite),
              ),
            ),
            SizedBox(
              width: 90,
              child: Text(
                phone,
                style: const TextStyle(color: kWhite),
              ),
            ),
            const SizedBox(
              width: 80,
              child: ChipWidget(
                tittle: "Active",
                color: kyellow,
                bgColor: kyellowbg,
              ),
            ),
            SizedBox(
              width: 120,
              child: Text(
                assignDate ?? "--",
                style: const TextStyle(
                  color: kWhite,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              width: 50,
              child: PullDownButton(
                routeTheme: PullDownMenuRouteTheme(
                  backgroundColor: const Color.fromARGB(72, 72, 72, 72),
                  borderRadius: BorderRadius.circular(10),
                  width: 180,
                  accessibilityWidth: 200,
                ),
                itemBuilder: (context) => [
                  PullDownMenuItem(
                    onTap: () {},
                    tapHandler: (context, onTap) {
                      context.pop();
                      onviewProfile!();
                    },
                    title: 'View Profile',
                    icon: HugeIcons.strokeRoundedUserCircle,
                  ),
                  PullDownMenuItem(
                    onTap: () {},
                    tapHandler: (context, onTap) {
                      context.pop();
                      showDialog(
                          barrierColor: kGrey.withOpacity(0.05),
                          context: context,
                          builder: (BuildContext context) =>
                              CupertinoAlertDialog(
                                content: Column(
                                  children: [
                                    PaddedColumn(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16),
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "Are you sure you want to remove this member?",
                                          style: TextStyle(
                                              color: kWhite,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        gapH10,
                                        const Text(
                                          "This action cannot be undone.",
                                          style: TextStyle(
                                              color: kGrey,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                actions: <Widget>[
                                  CupertinoDialogAction(
                                    child: const Text(
                                      'Cancel',
                                      style: TextStyle(
                                          color: kGrey,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    onPressed: () {
                                      context.pop();
                                    },
                                  ),
                                  CupertinoDialogAction(
                                    onPressed: onRemove,
                                    child: const Text(
                                      'Remove',
                                      style: TextStyle(
                                          color: kRed,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ));
                    },
                    title: 'Remove Student',
                    isDestructive: true,
                    icon: CupertinoIcons.delete,
                  ),
                ],
                buttonBuilder: (context, showMenu) => BouncingWidget(
                  onPressed: showMenu,
                  scaleFactor: 4,
                  child: const Icon(
                    CupertinoIcons.ellipsis_circle,
                    color: primaryColor,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
