import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/home/attendance/widget/attendance_mem_card.dart';
import 'package:omifit/view/home/home_view_model.dart';

class TabletAttendanceView extends ConsumerStatefulWidget {
  const TabletAttendanceView({super.key});

  @override
  ConsumerState<TabletAttendanceView> createState() =>
      _TabletAttendanceViewState();
}

class _TabletAttendanceViewState extends ConsumerState<TabletAttendanceView> {
  @override
  Widget build(BuildContext context) {
    final HomeViewModel homeViewModel = ref.watch(homeViewModelProvider);
    return Scaffold(
        body: SingleChildScrollView(
      child: PaddedColumn(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          gapH30,
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
