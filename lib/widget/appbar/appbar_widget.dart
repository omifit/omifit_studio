// ignore_for_file: deprecated_member_use

import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:cupertino_modal_sheet/cupertino_modal_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:iconly/iconly.dart';
import 'package:omifit_studio/data/home/member/model/get_memberlist_model.dart';
import 'package:omifit_studio/services/shared_preference_service.dart';
import 'package:omifit_studio/utils/parse.dart';
import 'package:omifit_studio/utils/utils.dart';
import 'package:omifit_studio/view/organization/attendance/dialog/mark_attendance_dialogbox.dart';
import 'package:omifit_studio/view/organization/organization_view_model.dart';
import 'package:omifit_studio/view/organization/settings/dialog/settings_dialog.dart';
import 'package:omifit_studio/view/profile/dialog/edit_profile/editprofile_dialog.dart';
import 'package:omifit_studio/view/profile/profile_view_model.dart';
import 'package:omifit_studio/widget/imageicon/profile_img.dart';
import 'package:pull_down_button/pull_down_button.dart';
import 'package:shimmer/shimmer.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class AppbarWidget extends ConsumerWidget {
  final String tittle;

  const AppbarWidget({required this.tittle, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final OrganizationViewModel organizationViewModel =
        ref.watch(organizationViewModelProvider);
    final ProfileViewModel profileViewModel =
        ref.watch(profileViewModelProvider);

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
                    width: 180.w,
                    child: TypeAheadField<User>(
                      constraints: BoxConstraints(
                        maxHeight: 900,
                        maxWidth: 1500.w,
                        minWidth: 1500.w,
                      ),
                      suggestionsCallback: (search) => [
                        ...List.generate(
                            organizationViewModel.getMemberListRes?.body
                                    ?.organizationMembers?.length ??
                                0,
                            (index) => User(
                                dateOfBirth: organizationViewModel
                                    .getMemberListRes
                                    ?.body
                                    ?.organizationMembers?[index]
                                    .user
                                    ?.dateOfBirth,
                                phoneNumber: organizationViewModel
                                    .getMemberListRes
                                    ?.body
                                    ?.organizationMembers?[index]
                                    .user
                                    ?.phoneNumber,
                                profileImage: organizationViewModel
                                    .getMemberListRes
                                    ?.body
                                    ?.organizationMembers?[index]
                                    .user
                                    ?.profileImage,
                                name: organizationViewModel
                                    .getMemberListRes
                                    ?.body
                                    ?.organizationMembers?[index]
                                    .user
                                    ?.name,
                                id: organizationViewModel.getMemberListRes?.body
                                    ?.organizationMembers?[index].user?.id
                                    .toString()))
                      ],
                      builder: (context, controller, focusNode) {
                        return TextField(
                          controller: controller,
                          focusNode: focusNode,
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
                          onChanged: (value) {
                            organizationViewModel.searchMember(
                                GetMemberListReq(
                                    nameORNumber: value.trim(),
                                    page: 1,
                                    limit: 20),
                                context);
                          },
                        );
                      },
                      itemBuilder: (context, user) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: ListTile(
                            style: ListTileStyle.list,
                            visualDensity: VisualDensity.compact,
                            contentPadding: EdgeInsets.zero,
                            leading: ProfileImg(
                              url: (user.profileImage == null ||
                                      user.profileImage == '')
                                  ? damiProfile(stringTogender(user.gender),
                                      user.dateOfBirth ?? "")
                                  : user.profileImage!,
                            ),
                            title: Text(
                              user.name ?? "",
                              style: const TextStyle(
                                  color: kWhite,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14),
                            ),
                            subtitle: Text(remove91(user.phoneNumber) ?? "",
                                style: const TextStyle(
                                  color: kGrey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                )),
                          ),
                        );
                      },
                      onSelected: (user) {
                        context.pushNamed(
                          AppRoute.memberDetails.name,
                          pathParameters: {'uid': user.id ?? ""},
                        );
                      },
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
                        onPressed: () {},
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
                      if (profileViewModel.lodinguserdetails &&
                          profileViewModel.userDetailsRes == null)
                        Shimmer.fromColors(
                          baseColor: darkBlack.withOpacity(0.2),
                          highlightColor:
                              const Color.fromARGB(89, 255, 255, 255)
                                  .withOpacity(0.4),
                          child: const CircleAvatar(),
                        )
                      else
                        PullDownButton(
                          routeTheme: PullDownMenuRouteTheme(
                            backgroundColor:
                                const Color.fromARGB(8, 52, 52, 52),
                            borderRadius: BorderRadius.circular(10),
                            shadow: BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 10,
                            ),
                          ),
                          itemBuilder: (context) => [
                            PullDownMenuHeader(
                              leading: ProfileImg(
                                url: ((profileViewModel.userDetailsRes?.body
                                                ?.user?.profileImage ==
                                            null ||
                                        profileViewModel.userDetailsRes?.body
                                                ?.user?.profileImage ==
                                            '')
                                    ? damiProfile(
                                        stringTogender(profileViewModel
                                            .userDetailsRes
                                            ?.body
                                            ?.user
                                            ?.gender),
                                        profileViewModel.userDetailsRes?.body
                                                ?.user?.dateOfBirth ??
                                            "")
                                    : profileViewModel.userDetailsRes!.body!
                                        .user!.profileImage!),
                              ),
                              title: (profileViewModel
                                          .userDetailsRes?.body?.user?.name ??
                                      "User")
                                  .trim()
                                  .split(RegExp(r'\s+'))
                                  .first,
                              subtitle: 'Tap to view',
                              icon: IconlyLight.arrow_right_2,
                              onTap: () {
                                showCupertinoModalSheet(
                                    context: context,
                                    builder: (context) =>
                                        const EditProfileDialog());
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
                                context.pushNamed(
                                    AppRoute.organizationDetails.name);
                              },
                              title: 'Sweat n Smile',
                              subtitle: 'organization',
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
                                SharedPreferenceService.clearAll();
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
                            child: ProfileImg(
                                url: ((profileViewModel.userDetailsRes?.body
                                                ?.user?.profileImage ==
                                            null ||
                                        profileViewModel.userDetailsRes?.body
                                                ?.user?.profileImage ==
                                            '')
                                    ? damiProfile(
                                        stringTogender(profileViewModel
                                            .userDetailsRes
                                            ?.body
                                            ?.user
                                            ?.gender),
                                        profileViewModel.userDetailsRes?.body
                                                ?.user?.dateOfBirth ??
                                            "")
                                    : profileViewModel.userDetailsRes!.body!
                                        .user!.profileImage!)),
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
                        showCupertinoModalSheet(
                            context: context,
                            builder: (context) => const SettingsDialog());
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
                        SharedPreferenceService.clearAll();
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
