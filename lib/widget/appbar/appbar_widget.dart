// ignore_for_file: deprecated_member_use

import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:iconly/iconly.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/organization/attendance/dialog/mark_attendance_dialogbox.dart';
import 'package:omifit/view/organization/member/dialog/addmember_dialog.dart';
import 'package:omifit/view/organization/member/member_view_model.dart';
import 'package:omifit/view/organization/organization_view_model.dart';
import 'package:omifit/widget/chips/chip_widget.dart';
import 'package:omifit/widget/imageicon/profile_img.dart';
import 'package:pull_down_button/pull_down_button.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class AppbarWidget extends ConsumerWidget {
  final String tittle;
  const AppbarWidget({required this.tittle, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final OrganizationViewModel organizationViewModel =
        ref.watch(organizationViewModelProvider);
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
                  onPressed: () => organizationViewModel.openDrawer(),
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
                    child: TypeAheadField<City>(
                      constraints: const BoxConstraints(
                        maxHeight: 900,
                        maxWidth: 1400,
                        minWidth: 1400,
                      ),
                      suggestionsCallback: (search) => [
                        ...List.generate(
                            5, (index) => City("Ayush Maji", "member"))
                      ],
                      builder: (context, controller, focusNode) {
                        return TextField(
                          controller: controller,
                          focusNode: focusNode,
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                          ),
                        );
                      },
                      itemBuilder: (context, city) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: ListTile(
                            style: ListTileStyle.list,
                            visualDensity: VisualDensity.compact,
                            contentPadding: EdgeInsets.zero,
                            leading: const ProfileImg(
                                url: 'https://i.imgur.com/UnWWlu3.png'),
                            title: Text(
                              city.name,
                              style: const TextStyle(
                                  color: kWhite,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14),
                            ),
                            trailing: const ChipWidget(
                                tittle: "member",
                                color: primaryColor,
                                bgColor: kyellowbg),
                            subtitle: const Text("Mem123",
                                style: TextStyle(
                                    color: kGrey,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12)),
                          ),
                        );
                      },
                      onSelected: (city) {},
                    )),
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
                              context.pushNamed(AppRoute.profile.name,
                                  pathParameters: {'isBack': 'true'});
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
                            onTap: () {
                              context
                                  .pushNamed(AppRoute.organizationDetails.name);
                            },
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
                          PullDownMenuItem(
                            onTap: () {
                              context.pushNamed(AppRoute.splash.name);
                            },
                            title: 'Logout',
                            isDestructive: true,
                            icon: IconlyLight.logout,
                            itemTheme: const PullDownMenuItemTheme(
                              textStyle: TextStyle(
                                color: primaryColor,
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
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
                  onPressed: () => organizationViewModel.openDrawer(),
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
                        context.pushNamed(AppRoute.profile.name,
                            pathParameters: {'isBack': 'true'});
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
                      onTap: () {
                        context.pushNamed(AppRoute.organizationDetails.name);
                      },
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
                    PullDownMenuItem(
                      onTap: () {
                        context.pushNamed(AppRoute.splash.name);
                      },
                      title: 'Logout',
                      isDestructive: true,
                      icon: IconlyLight.logout,
                      itemTheme: const PullDownMenuItemTheme(
                        textStyle: TextStyle(
                          color: primaryColor,
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                  buttonBuilder: (context, showMenu) => BouncingWidget(
                    onPressed: showMenu,
                    child: const ProfileImg(
                        url: "https://i.imgur.com/UnWWlu3.png"),
                  ),
                ),
              ],
            ),
          );
  }
}

class City {
  final String name;
  final String country;

  City(this.name, this.country);
}
