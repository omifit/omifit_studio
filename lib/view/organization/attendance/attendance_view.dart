import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/organization/attendance/pages/desktop_attendance_view.dart';
import 'package:omifit/view/organization/attendance/pages/mobile_attendance_view.dart';
import 'package:omifit/view/organization/attendance/pages/tablet_attendance_view.dart';

class AttendanceView extends StatelessWidget {
  const AttendanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveAttendance(
      mobile: MobileAttendanceView(),
      tablet: TabletAttendanceView(),
      desktop: DesktopAttendanceView(),
      tv: DesktopAttendanceView(),
    );
  }
}
