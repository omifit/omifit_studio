import 'package:flutter/cupertino.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/home/member/member_details/widget/analysis_mem_card.dart';
import 'package:omifit/view/home/member/member_details/widget/attendance_memdetails_card.dart';
import 'package:omifit/view/home/member/member_details/widget/meminfo_card.dart';
import 'package:omifit/view/home/member/member_details/widget/subscription_mem_card.dart';

class MobileMemberDetailsView extends StatefulWidget {
  const MobileMemberDetailsView({super.key});

  @override
  State<MobileMemberDetailsView> createState() =>
      _MobileMemberDetailsViewState();
}

class _MobileMemberDetailsViewState extends State<MobileMemberDetailsView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Member Details"),
            bottom: const TabBar(
              indicatorColor: secondaryColor,
              labelColor: secondaryColor,
              dividerColor: Colors.transparent,
              indicatorSize: TabBarIndicatorSize.tab,
              labelStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              enableFeedback: true,
              tabs: [
                Tab(
                  text: "Profile",
                ),
                Tab(
                  text: "Subscription",
                ),
                Tab(
                  text: "Attendance",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: PaddedColumn(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  children: [
                    gapH22,
                    const MeminfoCard(),
                    gapH20,
                    const AnalysisMemCard(),
                    gapH20,
                  ],
                ),
              ),
              SingleChildScrollView(
                child: PaddedColumn(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  children: [
                    gapH12,
                    // Wrap(
                    //   crossAxisAlignment: WrapCrossAlignment.start,
                    //   children: [
                    //     const Chip(
                    //       avatar: CircleAvatar(
                    //         child: Icon(
                    //           CupertinoIcons.plus,
                    //           color: kWhite,
                    //           size: 20,
                    //         ),
                    //       ),
                    //       label: Text("Buy Plan"),
                    //     ),
                    //     gapW10,
                    //   ],
                    // ),
                    gapH20,
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
                    gapH20,
                  ],
                ),
              ),
              SingleChildScrollView(
                child: PaddedColumn(
                  children: [
                    PaddedColumn(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      children: [
                        gapH15,
                        Row(
                          children: [
                            const Text(
                              "Attendance",
                              style: TextStyle(
                                color: kWhite,
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            const Spacer(),
                            ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                padding: const EdgeInsets.all(10),
                                elevation: 0,
                                surfaceTintColor: primaryColor,
                                backgroundColor: primaryColor,
                              ),
                              onPressed: () {},
                              icon: const Icon(
                                CupertinoIcons.add_circled,
                                color: kWhite,
                                size: 20,
                              ),
                              label: const Text(
                                "Add Attendance",
                                style: TextStyle(
                                  color: kWhite,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                        gapH15,
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
                        gapH10,
                      ],
                    ),
                    gapH20,
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
