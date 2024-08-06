import 'package:flutter/cupertino.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/organization/member/member_details/widget/analysis_mem_card.dart';
import 'package:omifit/view/organization/member/member_details/widget/attendance_memdetails_card.dart';
import 'package:omifit/view/organization/member/member_details/widget/meminfo_card.dart';
import 'package:omifit/view/organization/member/member_details/widget/subscription_mem_card.dart';

class TabletMemberDetailsView extends StatefulWidget {
  const TabletMemberDetailsView({super.key});

  @override
  State<TabletMemberDetailsView> createState() =>
      _TabletMemberDetailsViewState();
}

class _TabletMemberDetailsViewState extends State<TabletMemberDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Member Details"),
        ),
        body: SingleChildScrollView(
          child: PaddedColumn(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              gapH20,
              const MeminfoCard(),
              gapH20,
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
                    gapH10,
                    Row(
                      children: [
                        const Text(
                          "Subscription",
                          style: TextStyle(
                            color: kWhite,
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const Spacer(),
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: const EdgeInsets.all(20),
                            elevation: 0,
                            surfaceTintColor: primaryColor,
                            backgroundColor:
                                const Color.fromRGBO(194, 117, 39, 0.2),
                          ),
                          onPressed: () {},
                          icon: const Icon(CupertinoIcons.add_circled,
                              color: secondaryColor),
                          label: const Text(
                            "Buy Plan",
                            style: TextStyle(
                              color: secondaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        gapW10,
                      ],
                    ),
                    const Divider(color: kGrey, thickness: 0.2),
                    gapH10,
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
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: PaddedColumn(
                        children: [
                          ...List.generate(
                            15,
                            (index) => Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: AttendanceMemberDetailsCard(
                                date: "27/02/2001",
                                checkin: "10:00 AM",
                                checkout: "12:00 PM",
                                duration: "2 hours",
                                onPressed: () {},
                              ),
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
          ),
        ));
  }
}
