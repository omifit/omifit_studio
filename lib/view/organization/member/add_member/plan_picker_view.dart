import 'package:cupertino_modal_sheet/cupertino_modal_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:omifit/data/home/subscription/model/purchase_plan_model.dart';
import 'package:omifit/utils/parse.dart';
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
  final List<SelectedPlan> tempSelectedPlan = [];
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
        toolbarHeight: 75,
        backgroundColor: darkBlack,
        title: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            ProfileImg(
              url: memberViewModel.memberDetailsRes?.body?.organizationMember
                      ?.user?.profileImage ??
                  damiProfile(
                      stringTogender(memberViewModel.memberDetailsRes?.body
                          ?.organizationMember?.user?.gender),
                      memberViewModel.memberDetailsRes?.body?.organizationMember
                              ?.user?.dateOfBirth ??
                          ""),
              height: 40,
              width: 40,
            ),
            gapW20,
            Text(
              memberViewModel
                      .memberDetailsRes?.body?.organizationMember?.user?.name ??
                  "",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(Icons.arrow_back_ios, color: kWhite),
        ),
        actions: [
          TextButton(
            onPressed: () {
              HapticFeedback.mediumImpact();
              if (tempSelectedPlan.isNotEmpty) {
                showCupertinoModalSheet(
                    context: context,
                    builder: (context) =>
                        PaymentView(selectedItems: tempSelectedPlan));
              }
            },
            child: Text(
              "Next",
              style: TextStyle(
                color: tempSelectedPlan.isEmpty ? kGrey : primaryColor,
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

                                                if (tempSelectedPlan.any(
                                                    (element) =>
                                                        element.planId ==
                                                        planViewModel
                                                            .getPlanListRes
                                                            ?.body
                                                            ?.organizationPlans?[
                                                                index]
                                                            .id)) {
                                                  tempSelectedPlan.removeWhere(
                                                      (element) =>
                                                          element.planId ==
                                                          planViewModel
                                                              .getPlanListRes
                                                              ?.body
                                                              ?.organizationPlans?[
                                                                  index]
                                                              .id);
                                                } else {
                                                  tempSelectedPlan.add(SelectedPlan(
                                                      userId: widget.uid,
                                                      planId: planViewModel
                                                          .getPlanListRes
                                                          ?.body
                                                          ?.organizationPlans?[
                                                              index]
                                                          .id,
                                                      planName: planViewModel
                                                          .getPlanListRes
                                                          ?.body
                                                          ?.organizationPlans?[
                                                              index]
                                                          .name,
                                                      totalAmount: planViewModel
                                                          .getPlanListRes
                                                          ?.body
                                                          ?.organizationPlans?[
                                                              index]
                                                          .price,
                                                      membershipStartDate:
                                                          dateTimeRange.start,
                                                      membershipEndDate:
                                                          dateTimeRange.end,
                                                      durationValue: planViewModel
                                                          .getPlanListRes
                                                          ?.body
                                                          ?.organizationPlans?[
                                                              index]
                                                          .duration
                                                          ?.value,
                                                      durationUnit: planViewModel
                                                          .getPlanListRes
                                                          ?.body
                                                          ?.organizationPlans?[
                                                              index]
                                                          .duration
                                                          ?.unit));
                                                }
                                                setState(() {});
                                              },
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 8,
                                                      horizontal: 16),
                                              leading: IgnorePointer(
                                                child: Checkbox(
                                                    activeColor: kRed,
                                                    checkColor: kWhite,
                                                    value: tempSelectedPlan.any(
                                                        (element) =>
                                                            element.planId ==
                                                            planViewModel
                                                                .getPlanListRes
                                                                ?.body
                                                                ?.organizationPlans?[
                                                                    index]
                                                                .id),
                                                    onChanged: (value) {}),
                                              ),
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
      case 'week':
        expireDateTime = startDateTime.add(Duration(days: number * 7));
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
