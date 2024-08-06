import 'package:flutter/cupertino.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/organization/member/member/widget/status_dropdown.dart';
import 'package:omifit/view/organization/member/member_details/widget/analysis_mem_card.dart';
import 'package:omifit/view/organization/member/member_details/widget/attendance_memdetails_card.dart';
import 'package:omifit/view/organization/member/member_details/widget/meminfo_card.dart';
import 'package:omifit/view/organization/member/member_details/widget/subscription_mem_card.dart';

class DesktopMemberDetailsView extends StatefulWidget {
  const DesktopMemberDetailsView({super.key});

  @override
  State<DesktopMemberDetailsView> createState() =>
      _DesktopMemberDetailsViewState();
}

class _DesktopMemberDetailsViewState extends State<DesktopMemberDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Member Details"),
        ),
        body: SingleChildScrollView(
          child: PaddedRow(
            crossAxisAlignment: CrossAxisAlignment.start,
            padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
            children: [
              const MeminfoCard(),
              gapW20,
              Expanded(
                  child: PaddedColumn(
                children: [
                  const AnalysisMemCard(),
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
                                onChange: (value) {}, initialValue: "Active"),
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
                                // WoltModalSheet.show(
                                //     minDialogWidth: 900,
                                //     maxDialogWidth: 900,
                                //     context: context,
                                //     barrierDismissible: false,
                                //     pageIndexNotifier:
                                //         memberViewModel.addMemberDialogPage,
                                //     pageListBuilder: (BuildContext context) {
                                //       return [
                                //         AddMemberDialog.build(context),
                                //         PlanAddMemberDialog.build(context, ref),
                                //         PaymentAddMemberDialog.build(context, ref),
                                //       ];
                                //     });
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
                                width: 50.w,
                                child: const Text(
                                  "Plan Name",
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontWeight: FontWeight.w800,
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
                                    fontWeight: FontWeight.w800,
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
                                    fontWeight: FontWeight.w800,
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
                                    fontWeight: FontWeight.w800,
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
                                    fontWeight: FontWeight.w800,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 130,
                                child: Text(
                                  "Payment-Status",
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontWeight: FontWeight.w800,
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
                                3,
                                (index) => Padding(
                                  padding: const EdgeInsets.only(bottom: 12),
                                  child: SubscriptionMemCard(
                                    planName: "Gym membership for 3 months",
                                    startDate: "27/02/2001",
                                    endDate: "27/03/2001",
                                    price: "200000",
                                    status: "in-comming",
                                    paymentMode: "Pending",
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
