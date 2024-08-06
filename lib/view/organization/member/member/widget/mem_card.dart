import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:hovering/hovering.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/organization/member/dialog/editmember_dialog.dart';
import 'package:omifit/widget/chips/chip_widget.dart';
import 'package:omifit/widget/imageicon/profile_img.dart';
import 'package:pull_down_button/pull_down_button.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class MemCard extends StatelessWidget {
  final String memid;
  final String profilePic;
  final String name;
  final String phone;
  final String age;
  final String joinDate;
  final String? coachName;
  final String? coachPic;
  final String? status;
  final Function()? onPressed;

  const MemCard({
    super.key,
    this.onPressed,
    required this.memid,
    required this.profilePic,
    required this.name,
    required this.phone,
    required this.age,
    required this.joinDate,
    this.coachName,
    this.coachPic,
    this.status,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveMember(
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
      desktop: GestureDetector(
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
                  width: 190,
                  child: Row(
                    children: [
                      ProfileImg(
                        url: coachPic ?? "",
                        height: 30,
                        width: 30,
                      ),
                      gapW10,
                      Expanded(
                        child: Text(
                          coachName ?? "No Coach",
                          style: const TextStyle(color: kWhite),
                        ),
                      ),
                    ],
                  )),
              const SizedBox(
                width: 80,
                child: ChipWidget(
                  tittle: "Active",
                  color: kyellow,
                  bgColor: kyellowbg,
                ),
              ),
              SizedBox(
                width: 50,
                child: PullDownButton(
                  itemBuilder: (context) => [
                    PullDownMenuItem(
                      onTap: () {},
                      tapHandler: (context, onTap) {
                        context.pop();
                        onPressed!();
                      },
                      title: 'View Details',
                      icon: CupertinoIcons.person_crop_circle,
                    ),
                    PullDownMenuItem(
                      title: 'Edit Member',
                      onTap: () {},
                      tapHandler: (context, onTap) {
                        context.pop();
                        WoltModalSheet.show(
                            context: context,
                            barrierDismissible: false,
                            minDialogWidth: 750,
                            maxDialogWidth: 1000,
                            pageListBuilder: (BuildContext context) {
                              return [
                                EditMemberDetailsDialog.build(context),
                              ];
                            });
                      },
                      icon: CupertinoIcons.pencil,
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
                                            "Are you sure you want to delete this member?",
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
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                    CupertinoDialogAction(
                                      child: const Text(
                                        'Delete',
                                        style: TextStyle(
                                            color: kRed,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                ));
                      },
                      title: 'Delete',
                      isDestructive: true,
                      icon: CupertinoIcons.delete,
                    ),
                    PullDownMenuActionsRow.medium(
                      items: [
                        PullDownMenuItem(
                          onTap: () {},
                          tapHandler: (context, onTap) {},
                          title: 'Message',
                          icon: CupertinoIcons.paperplane_fill,
                        ),
                        PullDownMenuItem(
                          onTap: () {},
                          title: 'Attendance',
                          icon: CupertinoIcons.qrcode_viewfinder,
                        ),
                      ],
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
