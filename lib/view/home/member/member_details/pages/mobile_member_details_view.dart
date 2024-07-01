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
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  children: [
                    gapH20,
                    const MeminfoCard(),
                    gapH20,
                    const AnalysisMemCard(),
                    gapH20,
                  ],
                ),
              ),
              SingleChildScrollView(
                child: PaddedColumn(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  children: [
                    gapH10,
                    PaddedRow(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 2),
                      children: [
                        const Text(
                          "Subscription",
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
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: const EdgeInsets.all(10),
                            elevation: 0,
                            surfaceTintColor: primaryColor,
                            backgroundColor:
                                const Color.fromRGBO(194, 117, 39, 0.2),
                          ),
                          onPressed: () {},
                          icon: const Icon(
                            CupertinoIcons.add_circled,
                            color: secondaryColor,
                            size: 20,
                          ),
                          label: const Text(
                            "Buy Plan",
                            style: TextStyle(
                              color: secondaryColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: kGrey,
                      thickness: 0.3,
                    ),
                    gapH10,
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
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: darkBlack,
                      ),
                      child: PaddedColumn(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        children: [
                          gapH10,
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
                                  padding: const EdgeInsets.all(10),
                                  elevation: 0,
                                  surfaceTintColor: primaryColor,
                                  backgroundColor:
                                      const Color.fromRGBO(194, 117, 39, 0.2),
                                ),
                                onPressed: () {},
                                icon: const Icon(CupertinoIcons.calendar,
                                    color: secondaryColor, size: 20),
                                label: const Text(
                                  "Today",
                                  style: TextStyle(
                                    color: secondaryColor,
                                    fontSize: 14,
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
              ),
            ],
          )),
    );
  }
}
