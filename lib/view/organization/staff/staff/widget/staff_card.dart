import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:hovering/hovering.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:omifit_studio/utils/utils.dart';
import 'package:omifit_studio/widget/chips/chip_widget.dart';
import 'package:omifit_studio/widget/imageicon/profile_img.dart';
import 'package:pull_down_button/pull_down_button.dart';

class StaffCard extends StatelessWidget {
  final String staffid;
  final String profilePic;
  final String name;
  final String phone;
  final String age;
  final String joinDate;
  final String? totalMember;
  final String? role;
  final Function()? onRemove;
  final Function()? onEdit;
  final Function()? onPressed;

  const StaffCard({
    super.key,
    this.onPressed,
    required this.staffid,
    required this.profilePic,
    required this.name,
    required this.phone,
    required this.age,
    required this.joinDate,
    this.totalMember,
    this.role,
    this.onRemove,
    this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveStaff(
      mobile: InkWell(
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 0),
          decoration: const BoxDecoration(
            color: darkBlack,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: ListTile(
            visualDensity: VisualDensity.compact,
            contentPadding: EdgeInsets.zero,
            leading: ProfileImg(url: profilePic),
            title: Text(name,
                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600)),
            subtitle: Text('SID-$staffid',
                style: TextStyle(fontSize: 12.sp, color: kGrey)),
            trailing: const ChipWidget(
              tittle: 'Trainer',
              color: kGreen,
              bgColor: kGreenbg,
            ),
          ),
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
                ListTile(
                  leading: ProfileImg(url: profilePic),
                  title: Text(
                    name,
                    style: const TextStyle(
                      color: kWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text(
                    "SID-$staffid",
                    style: const TextStyle(
                        color: secondaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  trailing: const Icon(Icons.more_vert_rounded),
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
                          Text(
                            phone,
                            style: const TextStyle(
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
                          Text(
                            joinDate,
                            style: const TextStyle(
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
                            "Total Member",
                            style: TextStyle(
                                color: kWhite,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          gapH5,
                          Text(
                            "$totalMember students" ?? "--",
                            style: const TextStyle(
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
                          ChipWidget(
                              tittle: role ?? "--",
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
      desktop: InkWell(
        onTap: onPressed,
        child: HoverContainer(
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
                  staffid,
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
              SizedBox(
                width: 70,
                child: Text(
                  age,
                  style: const TextStyle(color: kWhite),
                ),
              ),
              SizedBox(
                width: 80,
                child: Text(
                  joinDate,
                  style: const TextStyle(color: kWhite),
                ),
              ),
              SizedBox(
                  width: 140,
                  child: Text(
                    "$totalMember students" ?? "--",
                    style: const TextStyle(color: kWhite),
                  )),
              SizedBox(
                width: 80,
                child: ChipWidget(
                  tittle: role ?? "--",
                  color: kyellow,
                  bgColor: kyellowbg,
                ),
              ),
              SizedBox(
                width: 50,
                child: PullDownButton(
                  routeTheme: PullDownMenuRouteTheme(
                    backgroundColor: const Color.fromARGB(72, 72, 72, 72),
                    borderRadius: BorderRadius.circular(10),
                    width: 150,
                    accessibilityWidth: 200,
                  ),
                  itemBuilder: (context) => [
                    PullDownMenuItem(
                      title: 'Edit Staff',
                      onTap: onEdit,
                      tapHandler: (context, onTap) {
                        context.pop();
                      },
                      icon: HugeIcons.strokeRoundedUserEdit01,
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
                                          gapH14,
                                          ProfileImg(
                                            url: profilePic,
                                            height: 60,
                                            width: 60,
                                          ),
                                          gapH10,
                                          Text(
                                            name,
                                            style: const TextStyle(
                                                color: kWhite, fontSize: 14),
                                          ),
                                          gapH14,
                                          const Text(
                                            "Are you sure you want to remove this staff?",
                                            style: TextStyle(
                                                color: kWhite,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          gapH5,
                                          const Text(
                                            "This action cannot be undone.",
                                            style: TextStyle(
                                                color: kGrey,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          gapH20,
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
                                        Navigator.of(context).pop();
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
                      title: 'Remove',
                      isDestructive: true,
                      icon: HugeIcons.strokeRoundedDelete02,
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
      ),
    );
  }
}
