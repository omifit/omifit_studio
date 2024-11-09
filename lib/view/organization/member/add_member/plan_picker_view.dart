import 'package:cupertino_modal_sheet/cupertino_modal_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:omifit/core/core.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/organization/member/add_member/payment_view.dart';
import 'package:omifit/view/organization/member/member_view_model.dart';
import 'package:omifit/view/organization/plan/plan_view_model.dart';
import 'package:omifit/widget/imageicon/profile_img.dart';

class PlanPickerView extends ConsumerStatefulWidget {
  final String uid;
  const PlanPickerView({
    super.key,
    required this.uid,
  });

  @override
  ConsumerState<PlanPickerView> createState() => _PlanPickerViewState();
}

class _PlanPickerViewState extends ConsumerState<PlanPickerView> {
  final List<dynamic> _tempSelectedPlan = [];
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _gedata();
    });
  }

  void _gedata() {
    ref.read(planViewModelProvider).getplanlist(context);
    ref.read(memberViewModelProvider).memberdetails(context, widget.uid);
  }

  @override
  Widget build(BuildContext context) {
    final PlanViewModelProvider planViewModel =
        ref.watch(planViewModelProvider);
    final MemberViewModel memberViewModel = ref.watch(memberViewModelProvider);
    return Scaffold(
      backgroundColor: darkBlack,
      appBar: AppBar(
        backgroundColor: darkBlack,
        title: Text(
          "Select Plan",
          style: TextStyle(
            color: Colors.white,
            fontSize: Responsive.isMobile(context) ? 16 : 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios, color: kWhite),
        ),
        actions: [
          TextButton(
            onPressed: () {
              showCupertinoModalSheet(
                  context: context,
                  builder: (context) =>
                      PaymentView(selectedItems: _tempSelectedPlan));
            },
            child: Text(
              "Next",
              style: TextStyle(
                color: _tempSelectedPlan.isEmpty ? kGrey : primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          gapW10
        ],
      ),
      body: planViewModel.lodingplanlist || memberViewModel.lodingmemberdetails
          ? const Center(
              child: CupertinoActivityIndicator(
              radius: 12.5,
            ))
          : SingleChildScrollView(
              child: Column(
                children: [
                  PaddedColumn(
                    padding: EdgeInsets.symmetric(
                        horizontal:
                            ResponsiveMember.isMobile(context) ? 16 : 20),
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      gapH30,
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 70, 69, 69),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(9, 9, 9, 9),
                              offset: Offset(0, 2),
                              blurRadius: 30,
                            ),
                          ],
                        ),
                        child: ListTile(
                          leading: const ProfileImg(
                            url: AppConstants.orgLogoPlaceholder,
                            height: 60,
                          ),
                          title: Text(
                              memberViewModel.memberDetailsRes?.body
                                      ?.organizationMember?.user?.name ??
                                  "",
                              style: TextStyle(
                                  color: kWhite.withOpacity(0.9),
                                  fontSize: ResponsiveMember.isMobile(context)
                                      ? 14
                                      : 17,
                                  fontWeight: FontWeight.w500)),
                          subtitle: Text(
                              memberViewModel.memberDetailsRes?.body
                                      ?.organizationMember?.user?.phoneNumber ??
                                  "",
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(185, 217, 215, 215),
                                  fontSize: ResponsiveMember.isMobile(context)
                                      ? 12
                                      : 15,
                                  fontWeight: FontWeight.w400)),
                        ),
                      ),
                      gapH30,
                      Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: lightBlack.withOpacity(0.3),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                          ),
                          child: Column(
                            children: [
                              ...List.generate(
                                  planViewModel.getPlanListRes?.body
                                          ?.organizationPlans?.length ??
                                      0,
                                  (index) => Visibility(
                                        visible: planViewModel
                                                .getPlanListRes
                                                ?.body
                                                ?.organizationPlans?[index]
                                                .isActive ??
                                            false,
                                        child: Column(
                                          children: [
                                            CupertinoListTile(
                                              onTap: () {
                                                HapticFeedback.lightImpact();
                                                final DateTimeRange dateTimeRange =
                                                    calculateStartAndExpireDate(
                                                        planViewModel
                                                                .getPlanListRes
                                                                ?.body
                                                                ?.organizationPlans?[
                                                                    index]
                                                                .duration
                                                                ?.value ??
                                                            0,
                                                        planViewModel
                                                                .getPlanListRes
                                                                ?.body
                                                                ?.organizationPlans?[
                                                                    index]
                                                                .duration
                                                                ?.unit ??
                                                            "");

                                                _tempSelectedPlan.add({
                                                  "planId":
                                                      "6717fc3a920af2ec83621a75",
                                                  "planName": "Basic",
                                                  "totalAmount": "100",
                                                  "paidAmount": "100",
                                                  "remark": "nothing",
                                                  "paymentForm": "cash",
                                                  "membershipStartDate":
                                                      dateTimeRange.start,
                                                  "membershipEndDate":
                                                      dateTimeRange.end,
                                                  "userId":
                                                      "6717f4ace2bf6bcfac45414f"
                                                });
                                                setState(() {});
                                              },
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 8,
                                                      horizontal: 16),
                                              leading: Checkbox(
                                                  activeColor: kRed,
                                                  checkColor: kWhite,
                                                  value: index == 0,
                                                  onChanged: (value) {}),
                                              title: Text(
                                                  planViewModel
                                                          .getPlanListRes
                                                          ?.body
                                                          ?.organizationPlans?[
                                                              index]
                                                          .name ??
                                                      "",
                                                  style: TextStyle(
                                                      color: kWhite
                                                          .withOpacity(0.9),
                                                      fontSize: ResponsiveMember
                                                              .isMobile(context)
                                                          ? 14
                                                          : 16,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                              trailing: Text(
                                                  "₹ ${planViewModel.getPlanListRes?.body?.organizationPlans?[index].price ?? 0}",
                                                  style: TextStyle(
                                                      color: kWhite,
                                                      fontSize: ResponsiveMember
                                                              .isMobile(context)
                                                          ? 18
                                                          : 16,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              subtitle: Text(
                                                  "Duration - ${planViewModel.getPlanListRes?.body?.organizationPlans?[index].duration?.value ?? 0} ${planViewModel.getPlanListRes?.body?.organizationPlans?[index].duration?.unit ?? ""}",
                                                  style: TextStyle(
                                                      color:
                                                          const Color.fromARGB(
                                                              95,
                                                              217,
                                                              215,
                                                              215),
                                                      fontSize: ResponsiveMember
                                                              .isMobile(context)
                                                          ? 12
                                                          : 13,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                            ),
                                            if (index ==
                                                ((planViewModel
                                                            .getPlanListRes
                                                            ?.body
                                                            ?.organizationPlans
                                                            ?.length ??
                                                        0) -
                                                    1))
                                              const SizedBox()
                                            else
                                              const Divider(
                                                color: kGrey,
                                                thickness: 0.2,
                                              ),
                                          ],
                                        ),
                                      ))
                            ],
                          )),
                    ],
                  ),
                  gapH30
                ],
              ),
            ),
    );
  }

  DateTimeRange calculateStartAndExpireDate(int number, String unit) {
    // Start DateTime is the current DateTime
    final DateTime startDateTime = DateTime.now();
    DateTime expireDateTime;

    // Check the unit and calculate expiration DateTime accordingly
    switch (unit.toLowerCase()) {
      case 'day':
        expireDateTime = startDateTime.add(Duration(days: number));
        break;
      case 'month':
        expireDateTime = DateTime(
          startDateTime.year,
          startDateTime.month + number,
          startDateTime.day,
          startDateTime.hour,
          startDateTime.minute,
          startDateTime.second,
          startDateTime.millisecond,
          startDateTime.microsecond,
        );
        break;
      case 'year':
        expireDateTime = DateTime(
          startDateTime.year + number,
          startDateTime.month,
          startDateTime.day,
          startDateTime.hour,
          startDateTime.minute,
          startDateTime.second,
          startDateTime.millisecond,
          startDateTime.microsecond,
        );
        break;
      default:
        throw ArgumentError('Invalid unit: $unit. Use day, month, or year.');
    }

    // Return the calculated DateTimeRange (start and expire datetime)
    return DateTimeRange(start: startDateTime, end: expireDateTime);
  }
}
