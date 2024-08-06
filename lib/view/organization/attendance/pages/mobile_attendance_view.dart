import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/organization/attendance/widget/attendance_dropdown.dart';
import 'package:omifit/view/organization/attendance/widget/attendance_info.dart';
import 'package:omifit/view/organization/attendance/widget/attendance_mem_card.dart';
import 'package:omifit/view/organization/organization_view_model.dart';

class MobileAttendanceView extends ConsumerStatefulWidget {
  const MobileAttendanceView({super.key});

  @override
  ConsumerState<MobileAttendanceView> createState() =>
      _MobileAttendanceViewState();
}

class _MobileAttendanceViewState extends ConsumerState<MobileAttendanceView> {
  @override
  Widget build(BuildContext context) {
    final OrganizationViewModel organizationViewModel =
        ref.watch(organizationViewModelProvider);
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(15),
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          onPressed: () {},
          icon: const Icon(CupertinoIcons.add_circled, color: kWhite),
          label: const Text(
            "Mark Attendance",
            style: TextStyle(
              color: kWhite,
              fontSize: 14,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(color: darkBlack),
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                child: AlignedGridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  crossAxisSpacing: 25,
                  itemCount: 2,
                  itemBuilder: (context, i) {
                    return AttendanceInfoCard(
                      tittle: i == 0 ? '30' : '2',
                      trailing: i == 0 ? 'member' : 'hrs',
                      subTittle: i == 0 ? 'Today Attendance' : 'Avg Spent Time',
                    );
                  },
                ),
              ),
              gapH20,
              PaddedColumn(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  children: [
                    Row(
                      children: [
                        Text(
                          "Filter by",
                          style: TextStyle(
                            color: kWhite,
                            fontSize: ResponsiveDashboard.isMobile(context)
                                ? 14.sp
                                : 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Spacer(),
                        AttendanceDropdown(
                          onChange: (value) {},
                          initialValue: "Today",
                        ),
                      ],
                    ),
                    gapH15,
                    ...List.generate(
                      50,
                      (index) => Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: AttendanceMemCard(
                          memid: '101',
                          name: "Ayush Maji",
                          profilePic: "",
                          role: "Member",
                          date: "27/02/2001",
                          checkin: "7:08 Pm",
                          checkout: "8:30 Am",
                          duration: "2hrs",
                          onPressed: () {
                            HapticFeedback.lightImpact();
                            context.pushNamed(AppRoute.memberDetails.name);
                          },
                        ),
                      ),
                    ),
                    gapH30,
                  ]),
            ],
          ),
        ));
  }
}
