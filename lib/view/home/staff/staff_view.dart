import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/home/staff/pages/desktop_staff_view.dart';
import 'package:omifit/view/home/staff/pages/mobile_staff_view.dart';
import 'package:omifit/view/home/staff/pages/tablet_staff_view.dart';


class StaffView extends StatelessWidget {
  const StaffView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: MobileStaffView(),
        tablet: TabletStaffView(),
        desktop: DesktopStaffView(),
        tv: DesktopStaffView(),
      );
  }
}