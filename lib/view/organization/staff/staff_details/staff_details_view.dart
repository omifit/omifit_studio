import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/organization/staff/staff_details/pages/desktop_staff_details_view.dart';
import 'package:omifit/view/organization/staff/staff_details/pages/mobile_staff_details_view.dart';
import 'package:omifit/view/organization/staff/staff_details/pages/tablet_staff_details_view.dart';


class StaffDetailsView extends StatelessWidget {
  const StaffDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: MobileStaffDetailsView(),
        tablet: TabletStaffDetailsView(),
        desktop: DesktopStaffDetailsView(),
        tv: DesktopStaffDetailsView(),
      );
  }
}