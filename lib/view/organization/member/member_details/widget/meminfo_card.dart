import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:hovering/hovering.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:iconly/iconly.dart';
import 'package:intl/intl.dart';
import 'package:omifit/data/auth/auth_repo_impl.dart';
import 'package:omifit/data/auth/model/send_otp/sendotp_model.dart';
import 'package:omifit/data/auth/model/verify_otp/verifyotp_model.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/organization/member/member/widget/mem_card.dart';
import 'package:omifit/view/organization/member/member_view_model.dart';
import 'package:omifit/widget/imageicon/profile_img.dart';
import 'package:pinput/pinput.dart';
import 'package:pull_down_button/pull_down_button.dart';

class MeminfoCard extends ConsumerWidget {
  final String name;
  final String phone;
  final String age;
  final bool isVerify;
  final String gender;
  final String profession;
  final String joinDate;
  final String picture;
  final String uid;
  final Function()? onEdit;
  final Function()? onRemove;
  const MeminfoCard({
    super.key,
    required this.name,
    required this.phone,
    required this.age,
    required this.gender,
    required this.profession,
    required this.joinDate,
    required this.picture,
    required this.isVerify,
    this.onEdit,
    this.onRemove,
    required this.uid,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: ResponsiveMemberDetails.isMobile(context) ? double.infinity : 320,
      decoration: BoxDecoration(
        color: darkBlack,
        borderRadius: BorderRadius.circular(24),
      ),
      child: PaddedColumn(
        crossAxisAlignment: CrossAxisAlignment.start,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          gapH12,
          Align(
            alignment: Alignment.topRight,
            child: PullDownButton(
              routeTheme: PullDownMenuRouteTheme(
                backgroundColor: const Color.fromARGB(73, 72, 72, 72),
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
                  onTap: onEdit,
                  title: 'Edit Member',
                  icon: HugeIcons.strokeRoundedUserEdit01,
                ),
                PullDownMenuItem(
                  onTap: () {
                    showDialog(
                        barrierColor: kGrey.withOpacity(0.05),
                        context: context,
                        builder: (BuildContext context) => CupertinoAlertDialog(
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
                                        url: picture,
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
                                        "Are you sure you want to remove this member?",
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
                  title: 'Remove Member',
                  isDestructive: true,
                  icon: HugeIcons.strokeRoundedDelete02,
                ),
              ],
              buttonBuilder: (context, showMenu) => BouncingWidget(
                onPressed: showMenu,
                child: const Icon(
                  HugeIcons.strokeRoundedPencilEdit02,
                  color: primaryColor,
                ),
              ),
            ),
          ),
          Align(
            child: InkWell(
              onTap: () async {
                await showDialog(
                  context: context,
                  builder: (_) => imageDialog(picture),
                );
              },
              child: CircleAvatar(
                radius: 47,
                backgroundColor: kWhite,
                child: ProfileImg(
                  url: picture,
                  height: 90,
                  width: 90,
                ),
              ),
            ),
          ),
          gapH15,
          Align(
            child: Text(
              name,
              style: const TextStyle(
                color: kGrey,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          gapH10,
          const Divider(
            color: kGrey,
            thickness: 0.3,
          ),
          gapH4,
          ListTile(
            dense: true,
            visualDensity: VisualDensity.compact,
            contentPadding: EdgeInsets.zero,
            leading: const Icon(
              CupertinoIcons.phone,
              color: Color(0xffB2B2B2),
              size: 20,
            ),
            title: Text(
              phone,
              style: const TextStyle(
                color: Color(0xffB2B2B2),
                fontSize: 14,
              ),
            ),
          ),
          ListTile(
            dense: true,
            visualDensity: VisualDensity.compact,
            contentPadding: EdgeInsets.zero,
            leading: const Icon(
              HugeIcons.strokeRoundedCalendar02,
              color: Color(0xffB2B2B2),
              size: 20,
            ),
            title: Text(
              "$age (age)",
              style: const TextStyle(
                color: Color(0xffB2B2B2),
                fontSize: 14,
              ),
            ),
          ),
          ListTile(
            dense: true,
            visualDensity: VisualDensity.compact,
            contentPadding: EdgeInsets.zero,
            leading: const Icon(
              HugeIcons.strokeRoundedUserCircle,
              color: Color(0xffB2B2B2),
              size: 20,
            ),
            title: Text(
              gender,
              style: const TextStyle(
                color: Color(0xffB2B2B2),
                fontSize: 14,
              ),
            ),
          ),
          ListTile(
            dense: true,
            visualDensity: VisualDensity.compact,
            contentPadding: EdgeInsets.zero,
            leading: Icon(
              isVerify ? IconlyLight.shield_done : IconlyLight.shield_fail,
              color: isVerify ? kBlue : kyellow,
            ),
            title: Text(
              isVerify ? 'Verified' : 'Not-Verified',
              style: TextStyle(
                color: isVerify ? kBlue : kyellow,
                fontSize: 14,
              ),
            ),
            trailing: !isVerify
                ? BouncingWidget(
                    onPressed: () async {
                      await AuthRepoImpl()
                          .sendOtp(SendOtpReq(phoneNumber: phone));
                      String? pincode;
                      bool isloading = false;
                      await showModalBottomSheet(
                        elevation: 2,
                        isDismissible: true,
                        context: context,
                        barrierColor: Colors.transparent,
                        builder: (context) {
                          return StatefulBuilder(
                            builder: (BuildContext context,
                                StateSetter setModalState) {
                              return Container(
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: lightBlack,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                ),
                                child: PaddedColumn(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: Responsive.isMobile(context)
                                          ? 16
                                          : 42),
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    gapH10,
                                    Align(
                                      child: PaddedColumn(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 35),
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'Enter Otp for Verify This Member',
                                            style: TextStyle(
                                              color: kWhite,
                                              fontSize: 26,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          const SizedBox(height: 20),
                                          const Text(
                                            'Enter your phone number to receive a verification code via SMS or Call. This will help us verify your identity and secure your account.',
                                            style: TextStyle(
                                              color: kGrey,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          gapH40,
                                          Align(
                                            child: Pinput(
                                              length: 6,
                                              defaultPinTheme: PinTheme(
                                                width: 80,
                                                height:
                                                    Responsive.isMobile(context)
                                                        ? 60
                                                        : 80,
                                                textStyle: const TextStyle(
                                                  fontSize: 20,
                                                  color: kWhite,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: lightBlack
                                                      .withOpacity(0.5),
                                                  border:
                                                      Border.all(color: kGrey),
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                ),
                                              ),
                                              autofocus: true,
                                              androidSmsAutofillMethod:
                                                  AndroidSmsAutofillMethod
                                                      .smsUserConsentApi,
                                              autofillHints: const [
                                                AutofillHints.oneTimeCode
                                              ],
                                              validator: (s) {
                                                return s!.length == 6
                                                    ? null
                                                    : 'Pin is incorrect';
                                              },
                                              onChanged: (value) {
                                                pincode = value;
                                                setModalState(
                                                    () {}); // Update within modal state
                                              },
                                              onSubmitted: (value) {},
                                            ),
                                          ),
                                          gapH40,
                                          SizedBox(
                                            width: double.infinity,
                                            height: 50,
                                            child: FilledBtn(
                                              text: "Verify",
                                              isLoading: isloading,
                                              onPressed: () {
                                                setModalState(
                                                    () => isloading = true);
                                                AuthRepoImpl()
                                                    .verifyOtp(VerifyOtpReq(
                                                        phoneNumber: phone,
                                                        otp: pincode))
                                                    .then((value) =>
                                                        value.fold((l) {
                                                          setModalState(() =>
                                                              isloading =
                                                                  false);
                                                        }, (r) {
                                                          setModalState(() =>
                                                              isloading =
                                                                  false);
                                                          context.pop();
                                                          ref
                                                              .read(
                                                                  memberViewModelProvider)
                                                              .memberdetails(
                                                                  context, uid);
                                                        }));
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      );
                    },
                    child: HoverContainer(
                      cursor: SystemMouseCursors.click,
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      decoration: const BoxDecoration(
                          // color: primaryColor,
                          border: Border.fromBorderSide(
                              BorderSide(color: primaryColor)),
                          borderRadius: BorderRadius.all(Radius.circular(90))),
                      child: const Text(
                        "Verify",
                        style: TextStyle(color: primaryColor),
                      ),
                    ),
                  )
                : null,
          ),
          Wrap(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Chip(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: const BorderSide(
                        color: kGreenbg,
                      )),
                  backgroundColor: kGreenbg,
                  avatar: const Icon(
                    HugeIcons.strokeRoundedBriefcase03,
                    color: kGreen,
                  ),
                  label: Text(
                    profession,
                    style: const TextStyle(
                      color: kGreen,
                    ), //TextStyle
                  ), //Text
                ),
              ),
              gapW10,
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Chip(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: const BorderSide(
                        color: lightBlack,
                      )),
                  backgroundColor: lightBlack,
                  avatar: const Icon(
                    CupertinoIcons.timer,
                    color: kWhite,
                  ),
                  label: Text(
                    joinDate.isNotEmpty
                        ? 'joined ${DateFormat('dd MMM yyyy').format(DateTime.parse(joinDate))}'
                        : " -- ",
                    style: const TextStyle(
                      color: kWhite,
                    ), //TextStyle
                  ), //Text
                ),
              ),
            ],
          ),
          gapH20,
        ],
      ),
    );
  }
}
