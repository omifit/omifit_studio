import 'package:cupertino_modal_sheet/cupertino_modal_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:omifit_studio/data/auth/auth_repo_impl.dart';
import 'package:omifit_studio/data/auth/model/send_otp/sendotp_model.dart';
import 'package:omifit_studio/data/auth/model/verify_otp/verifyotp_model.dart';
import 'package:omifit_studio/data/home/member/model/get_memberlist_model.dart';
import 'package:omifit_studio/utils/parse.dart';
import 'package:omifit_studio/utils/utils.dart';
import 'package:omifit_studio/view/organization/member/add_member/plan_picker_view.dart';
import 'package:omifit_studio/view/organization/member/add_trainer/find_trainer.dart';
import 'package:omifit_studio/view/organization/member/edit_member/editmember_view.dart';
import 'package:omifit_studio/view/organization/member/member/widget/status_dropdown.dart';
import 'package:omifit_studio/view/organization/member/member_details/widget/analysis_mem_card.dart';
import 'package:omifit_studio/view/organization/member/member_details/widget/attendance_memdetails_card.dart';
import 'package:omifit_studio/view/organization/member/member_details/widget/meminfo_card.dart';
import 'package:omifit_studio/view/organization/member/member_details/widget/subscription_mem_card.dart';
import 'package:omifit_studio/view/organization/member/member_view_model.dart';
import 'package:pinput/pinput.dart';

class DesktopMemberDetailsView extends ConsumerStatefulWidget {
  final GetMemberListReq? memberfilter;
  final String uid;
  const DesktopMemberDetailsView(this.memberfilter,
      {super.key, required this.uid});

  @override
  ConsumerState<DesktopMemberDetailsView> createState() =>
      _DesktopMemberDetailsViewState();
}

class _DesktopMemberDetailsViewState
    extends ConsumerState<DesktopMemberDetailsView> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      getData();
    });
    super.initState();
  }

  void getData() {
    ref.read(memberViewModelProvider).memberdetails(context, widget.uid);
    ref
        .read(memberViewModelProvider)
        .getallsubscriptionbyuser(context, widget.uid, "");
  }

  @override
  Widget build(BuildContext context) {
    final MemberViewModel memberViewModel = ref.watch(memberViewModelProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Member Details"),
        ),
        body: SingleChildScrollView(
          child: PaddedRow(
            crossAxisAlignment: CrossAxisAlignment.start,
            padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
            children: [
              // member card
              MeminfoCard(
                uid: memberViewModel
                        .memberDetailsRes?.body?.organizationMember?.user?.id ??
                    "",
                name: memberViewModel.memberDetailsRes?.body?.organizationMember
                        ?.user?.name ??
                    "",
                phone: memberViewModel.memberDetailsRes?.body
                        ?.organizationMember?.user?.phoneNumber ??
                    "",
                age: calculateAge(memberViewModel.memberDetailsRes?.body
                            ?.organizationMember?.user?.dateOfBirth ??
                        "") ??
                    "",
                gender: capitalizeFirst(memberViewModel
                    .memberDetailsRes?.body?.organizationMember?.user?.gender),
                profession: capitalizeFirst(memberViewModel.memberDetailsRes
                    ?.body?.organizationMember?.user?.profession),
                joinDate: memberViewModel.memberDetailsRes?.body
                        ?.organizationMember?.joiningDate ??
                    "",
                picture: memberViewModel.memberDetailsRes?.body
                        ?.organizationMember?.user?.profileImage ??
                    damiProfile(
                        stringTogender(memberViewModel.memberDetailsRes?.body
                            ?.organizationMember?.user?.gender),
                        memberViewModel.memberDetailsRes?.body
                                ?.organizationMember?.user?.dateOfBirth ??
                            ""),
                isVerify: memberViewModel.memberDetailsRes?.body
                        ?.organizationMember?.user?.isVerified ??
                    false,
                onEdit: () async {
                  if (memberViewModel.memberDetailsRes?.body?.organizationMember
                          ?.user?.isVerified ??
                      false) {
                    // verified
                    // 1. send otp
                    await AuthRepoImpl().sendOtp(SendOtpReq(
                        phoneNumber: memberViewModel.memberDetailsRes?.body
                            ?.organizationMember?.user?.phoneNumber));
                    // verify otp
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
                                    horizontal:
                                        Responsive.isMobile(context) ? 16 : 42),
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
                                          'Verify OTP to Edit Member Details',
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
                                                color:
                                                    lightBlack.withOpacity(0.5),
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
                                          height: 60,
                                          child: FilledBtn(
                                            text: "Next",
                                            isLoading: isloading,
                                            onPressed: () {
                                              setModalState(
                                                  () => isloading = true);
                                              AuthRepoImpl()
                                                  .verifyOtp(VerifyOtpReq(
                                                      phoneNumber: memberViewModel
                                                          .memberDetailsRes
                                                          ?.body
                                                          ?.organizationMember
                                                          ?.user
                                                          ?.phoneNumber,
                                                      otp: pincode))
                                                  .then((value) =>
                                                      value.fold((l) {
                                                        setModalState(() =>
                                                            isloading = false);
                                                      }, (r) {
                                                        setModalState(() =>
                                                            isloading = false);
                                                        context.pop();
                                                        showCupertinoModalSheet(
                                                          context: context,
                                                          barrierDismissible:
                                                              false,
                                                          builder: (_) =>
                                                              EditMemberView(widget
                                                                  .memberfilter),
                                                        );
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
                  } else {
                    print("memberfilter ${widget.memberfilter}");
                    // not verified
                    showCupertinoModalSheet(
                      context: context,
                      barrierDismissible: false,
                      builder: (_) => EditMemberView(widget.memberfilter),
                    );
                  }
                },
                onRemove: () {
                  memberViewModel.deletemember(
                      context,
                      memberViewModel.memberDetailsRes?.body?.organizationMember
                              ?.user?.id ??
                          "",
                      widget.memberfilter);
                },
              ),
              gapW20,
              Expanded(
                  child: PaddedColumn(
                children: [
                  AnalysisMemCard(
                    uid: widget.uid,
                    onAddTrainer: () {
                      showCupertinoModalSheet(
                          context: context,
                          builder: (_) => FindTrainerView(
                                widget.memberfilter,
                                widget.uid,
                              ));
                    },
                  ),
                  gapH20,
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: darkBlack,
                      borderRadius: BorderRadius.all(Radius.circular(32)),
                    ),
                    child: PaddedColumn(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      children: [
                        gapH12,
                        Row(
                          children: [
                            const Text(
                              "Subscription",
                              style: TextStyle(
                                color: kWhite,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Spacer(),
                            StatusDropdown(
                                onChange: (value) {}, initialValue: "All"),
                            gapW10,
                            ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(15),
                                elevation: 0,
                                backgroundColor:
                                    const Color.fromRGBO(194, 117, 39, 0.2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: () {
                                showCupertinoModalSheet(
                                    context: context,
                                    builder: (_) => PlanPickerView(
                                          uid: widget.uid,
                                        ));
                              },
                              icon: const Icon(CupertinoIcons.add_circled,
                                  color: secondaryColor),
                              label: const Text(
                                "Buy Plan",
                                style: TextStyle(
                                  color: secondaryColor,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Divider(color: kGrey, thickness: 0.2),
                        gapH12,
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          height: 42,
                          decoration: BoxDecoration(
                            color: kyellowbg,
                            borderRadius: BorderRadius.circular(32),
                          ),
                          child: PaddedRow(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 45.w,
                                child: const Text(
                                  "Plan Name",
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 80,
                                child: Text(
                                  "Start Date",
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 80,
                                child: Text(
                                  "End Date",
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 70,
                                child: Text(
                                  "Price",
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 100,
                                child: Text(
                                  "Status",
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 100,
                                child: Text(
                                  "Status",
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 50,
                                child: Text(
                                  "Action",
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        gapH15,
                        SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: PaddedColumn(
                            children: [
                              ...List.generate(
                                memberViewModel.getallsubscriptionByUserRes
                                        ?.body?.subscriptions?.length ??
                                    0,
                                (index) => Padding(
                                  padding: const EdgeInsets.only(bottom: 12),
                                  child: SubscriptionMemCard(
                                    planName: memberViewModel
                                            .getallsubscriptionByUserRes
                                            ?.body
                                            ?.subscriptions?[index]
                                            .plan
                                            ?.name ??
                                        "",
                                    startDate: "27/02/2001",
                                    endDate: "27/03/2001",
                                    price: memberViewModel
                                            .getallsubscriptionByUserRes
                                            ?.body
                                            ?.subscriptions?[index]
                                            .totalAmount
                                            .toString() ??
                                        "",
                                    status: memberViewModel
                                            .getallsubscriptionByUserRes
                                            ?.body
                                            ?.subscriptions?[index]
                                            .status ??
                                        "--",
                                    paymentMode: memberViewModel
                                                .getallsubscriptionByUserRes
                                                ?.body
                                                ?.subscriptions?[index]
                                                .pendingAmount ==
                                            0
                                        ? "Paid"
                                        : "Due",
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                              gapH10,
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  gapH20,
                  Container(
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
                        Row(
                          children: [
                            const Text(
                              "Attendance",
                              style: TextStyle(
                                color: kWhite,
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            const Spacer(),
                            ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(20),
                                elevation: 0,
                                surfaceTintColor: primaryColor,
                                backgroundColor:
                                    const Color.fromRGBO(194, 117, 39, 0.2),
                              ),
                              onPressed: () {},
                              icon: const Icon(CupertinoIcons.calendar,
                                  color: secondaryColor),
                              label: const Text(
                                "Today",
                                style: TextStyle(
                                  color: secondaryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Divider(color: kGrey, thickness: 0.2),
                        gapH10,
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          height: 42,
                          decoration: BoxDecoration(
                            color: kyellowbg,
                            borderRadius: BorderRadius.circular(32),
                          ),
                          child: const PaddedRow(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 140,
                                child: Text(
                                  "Date",
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 90,
                                child: Text(
                                  "Check-in",
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 90,
                                child: Text(
                                  "Check-out",
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 90,
                                child: Text(
                                  "Duration",
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 70,
                                child: Text(
                                  "Action",
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        gapH15,
                        SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: PaddedColumn(
                            children: [
                              ...List.generate(
                                15,
                                (index) => AttendanceMemberDetailsCard(
                                  date: "27/02/2001",
                                  checkin: "10:00 AM",
                                  checkout: "12:00 PM",
                                  duration: "2 hours",
                                  onPressed: () {},
                                ),
                              ),
                              gapH10
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  gapH20,
                ],
              )),
            ],
          ),
        ));
  }
}
