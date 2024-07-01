import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/home/attendance/widget/attendance_mem_card.dart';
import 'package:omifit/view/home/home_view_model.dart';

class MobileAttendanceView extends ConsumerStatefulWidget {
  const MobileAttendanceView({super.key});

  @override
  ConsumerState<MobileAttendanceView> createState() =>
      _MobileAttendanceViewState();
}

class _MobileAttendanceViewState extends ConsumerState<MobileAttendanceView> {
  @override
  Widget build(BuildContext context) {
    final HomeViewModel homeViewModel = ref.watch(homeViewModelProvider);
    return Scaffold(
        body: SingleChildScrollView(
      child: PaddedColumn(
        crossAxisAlignment: CrossAxisAlignment.start,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          gapH30,
          AlignedGridView.count(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: MediaQuery.of(context).size.width > 1000 ? 4 : 2,
            mainAxisSpacing: 25,
            crossAxisSpacing: 25,
            itemCount: 2,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(246, 118, 0, 0.17),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListTile(
                  title: Text(
                    "30",
                    style: TextStyle(
                      color: kyellow,
                      fontSize:
                          ResponsiveDashboard.isMobile(context) ? 24.sp : 40,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  subtitle: Text(
                    "Total Members",
                    style: TextStyle(
                      color: kWhite,
                      fontSize:
                          ResponsiveDashboard.isMobile(context) ? 12.sp : 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              );
            },
          ),
          gapH30,
          // SizedBox(
          //   height: 50,
          //   child: ListView(
          //     shrinkWrap: true,
          //     scrollDirection: Axis.horizontal,
          //     children: [
          //       ElevatedButton.icon(
          //         style: ElevatedButton.styleFrom(
          //           padding: const EdgeInsets.all(20),
          //           elevation: 0,
          //           surfaceTintColor: primaryColor,
          //           backgroundColor: const Color.fromRGBO(194, 117, 39, 0.2),
          //         ),
          //         onPressed: () {},
          //         icon: const Icon(CupertinoIcons.calendar,
          //             color: secondaryColor),
          //         label: const Text(
          //           "Today",
          //           style: TextStyle(
          //             color: secondaryColor,
          //             fontSize: 16,
          //             fontWeight: FontWeight.w600,
          //           ),
          //         ),
          //       ),
          //       gapW10,
          //       ElevatedButton.icon(
          //         style: ElevatedButton.styleFrom(
          //           padding: const EdgeInsets.all(20),
          //           elevation: 0,
          //           backgroundColor: const Color.fromRGBO(194, 117, 39, 0.2),
          //         ),
          //         onPressed: () {},
          //         icon: const Icon(CupertinoIcons.add_circled,
          //             color: secondaryColor),
          //         label: const Text(
          //           "Mark Attendance",
          //           style: TextStyle(
          //             color: secondaryColor,
          //             fontSize: 16,
          //             fontWeight: FontWeight.w600,
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),

          gapH30,
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
                  context.pushNamed(AppRoute.memberDetails.name);
                },
              ),
            ),
          ),
          gapH30,
        ],
      ),
    ));
  }
}
