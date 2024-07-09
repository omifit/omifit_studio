// ignore_for_file: deprecated_member_use

import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:iconly/iconly.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/home/attendance/dialog/mark_attendance_dialogbox.dart';
import 'package:omifit/view/home/home_view_model.dart';
import 'package:omifit/view/home/member/dialog/addmember_dialog.dart';
import 'package:omifit/view/home/member/member_view_model.dart';
import 'package:omifit/widget/imageicon/profile_img.dart';
import 'package:pull_down_button/pull_down_button.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class AppbarWidget extends ConsumerWidget {
  final String tittle;
  const AppbarWidget({required this.tittle, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final HomeViewModel homeViewModel = ref.watch(homeViewModelProvider);
    final MemberViewModel memberViewModel = ref.watch(memberViewModelProvider);
    final Size size = MediaQuery.of(context).size;
    return size.width > 1000
        ? Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            height: double.infinity,
            color: darkBlack,
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: kWhite,
                  ),
                  onPressed: () => homeViewModel.openDrawer(),
                ),
                const SizedBox(width: 10),
                Text(
                  tittle,
                  style: const TextStyle(
                    color: kWhite,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(width: 100),
                SizedBox(
                  width: 500,
                  child: TextField(
                    readOnly: true,
                    onTap: () {
                      //context.pushNamed(AppRoute.search.name);
                    },
                    decoration: const InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(color: kWhite),
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Icon(
                          CupertinoIcons.search,
                          color: kWhite,
                        ),
                      ),
                      filled: true,
                      fillColor: lightBlack,
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                  decoration: BoxDecoration(
                    color: lightBlack,
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        tooltip: 'Send Message',
                        icon: const Icon(IconlyLight.send, color: kWhite),
                        hoverColor: primaryColor,
                        onPressed: () {},
                      ),
                      const SizedBox(width: 5),
                      IconButton(
                        tooltip: 'Add Member',
                        icon: const Icon(IconlyLight.add_user, color: kWhite),
                        hoverColor: primaryColor,
                        onPressed: () {
                          WoltModalSheet.show(
                              minDialogWidth: 0.5.sw,
                              maxDialogWidth: 0.5.sw,
                              context: context,
                              barrierDismissible: false,
                              pageIndexNotifier:
                                  memberViewModel.addMemberDialogPage,
                              pageListBuilder: (BuildContext context) {
                                return [
                                  AddMemberDialog.build(context),
                                  PlanAddMemberDialog.build(context, ref),
                                  PaymentAddMemberDialog.build(context, ref),
                                ];
                              });
                        },
                      ),
                      const SizedBox(width: 5),
                      IconButton(
                        tooltip: 'Mark Attendance',
                        icon: const Icon(CupertinoIcons.qrcode, color: kWhite),
                        hoverColor: primaryColor,
                        onPressed: () {
                          WoltModalSheet.show(
                              context: context,
                              barrierDismissible: false,
                              pageListBuilder: (BuildContext context) {
                                return [MarkAttendanceDialog.build(context)];
                              });
                        },
                      ),
                      const SizedBox(width: 5),
                      PullDownButton(
                        routeTheme: PullDownMenuRouteTheme(
                          backgroundColor: const Color.fromARGB(8, 52, 52, 52),
                          borderRadius: BorderRadius.circular(10),
                          shadow: BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 10,
                          ),
                        ),
                        itemBuilder: (context) => [
                          PullDownMenuHeader(
                            leading: const ProfileImg(
                                url: 'https://i.imgur.com/UnWWlu3.png'),
                            title: 'Ayush Maji',
                            subtitle: 'Tap to view',
                            icon: IconlyLight.arrow_right_2,
                            onTap: () {
                              context.pushNamed(AppRoute.profile.name);
                            },
                            itemTheme: const PullDownMenuItemTheme(
                              subtitleStyle: TextStyle(
                                color: kGrey,
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          PullDownMenuItem.selectable(
                            onTap: () {},
                            title: 'Sweat n Smile',
                            subtitle: 'Admin',
                            icon: IconlyLight.arrow_right_2,
                            itemTheme: const PullDownMenuItemTheme(
                              subtitleStyle: TextStyle(
                                color: primaryColor,
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          // PullDownMenuItem.selectable(
                          //     onTap: () {},
                          //     title: 'Sweet and smile',
                          //     subtitle: 'Staff',
                          //     itemTheme: const PullDownMenuItemTheme(
                          //       subtitleStyle: TextStyle(
                          //         color: kGrey,
                          //         fontSize: 11,
                          //         fontWeight: FontWeight.w400,
                          //       ),
                          //     )),
                          // PullDownMenuItem.selectable(
                          //     onTap: () {},
                          //     title: 'Sweet and smile',
                          //     subtitle: 'Member',
                          //     itemTheme: const PullDownMenuItemTheme(
                          //       subtitleStyle: TextStyle(
                          //         color: kGrey,
                          //         fontSize: 11,
                          //         fontWeight: FontWeight.w400,
                          //       ),
                          //     )),
                        ],
                        buttonBuilder: (context, showMenu) => BouncingWidget(
                          onPressed: showMenu,
                          child: const ProfileImg(
                              url: "https://i.imgur.com/UnWWlu3.png"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        : Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            height: double.infinity,
            color: darkBlack,
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: kWhite,
                  ),
                  onPressed: () => homeViewModel.openDrawer(),
                ),
                const SizedBox(width: 10),
                Text(
                  tittle,
                  style: const TextStyle(
                    color: kWhite,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                gapWR10,
                Expanded(
                  child: TextField(
                    readOnly: true,
                    onTap: () {},
                    decoration: const InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(color: kWhite),
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Icon(
                          CupertinoIcons.search,
                          color: kWhite,
                        ),
                      ),
                      filled: true,
                      fillColor: lightBlack,
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                    ),
                  ),
                ),
                gapWR10,
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                  child:
                      const ProfileImg(url: "https://i.imgur.com/UnWWlu3.png"),
                ),
              ],
            ),
          );
  }
}
