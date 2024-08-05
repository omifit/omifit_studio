import 'package:flutter/cupertino.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/home/attendance/dialog/mark_attendance_dialogbox.dart';
import 'package:omifit/view/home/attendance/widget/attendance_mem_card.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class DesktopAttendanceView extends StatefulWidget {
  const DesktopAttendanceView({super.key});

  @override
  State<DesktopAttendanceView> createState() => _DesktopAttendanceViewState();
}

class _DesktopAttendanceViewState extends State<DesktopAttendanceView> {
  @override
  void initState() {
    super.initState();
    gettableData();
  }

  void gettableData() {}

  @override
  Widget build(BuildContext context) {
    final double headerWidth = MediaQuery.of(context).size.width * 0.065;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Container(
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
                      backgroundColor: const Color.fromRGBO(194, 117, 39, 0.2),
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
                  gapW10,
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(20),
                      elevation: 0,
                      backgroundColor: const Color.fromRGBO(194, 117, 39, 0.2),
                    ),
                    onPressed: () {
                      WoltModalSheet.show(
                          context: context,
                          barrierDismissible: false,
                          pageListBuilder: (BuildContext context) {
                            return [MarkAttendanceDialog.build(context)];
                          });
                    },
                    icon: const Icon(CupertinoIcons.add_circled,
                        color: secondaryColor),
                    label: const Text(
                      "Mark Attendance",
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
                child: PaddedRow(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 30,
                      child: Text(
                        "",
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 48,
                      child: Text(
                        "Profile",
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 40.w,
                      child: const Text(
                        "Name",
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 90,
                      child: Text(
                        "Role",
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
                        "Date",
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
                        "Check-in",
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
                        "Check-out",
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
                        "Duration",
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    )
                  ],
                ),
              ),
              gapH15,
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: PaddedColumn(
                    children: [
                      ...List.generate(
                        50,
                        (index) => AttendanceMemCard(
                          memid: '101',
                          name: "Ayush Maji",
                          profilePic: "",
                          role: "Member",
                          date: "27/02/2001",
                          checkin: "7:08 Pm",
                          checkout: "8:30 Am",
                          duration: "2hrs",
                          onPressed: () {
                            context.pushNamed(AppRoute.memberDetails.name);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
