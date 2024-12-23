import 'package:omifit_studio/data/home/staff/model/get_stafflist_model.dart';
import 'package:omifit_studio/utils/utils.dart';
import 'package:omifit_studio/view/organization/staff/staff_details/pages/desktop_staff_details_view.dart';
import 'package:omifit_studio/view/organization/staff/staff_details/pages/mobile_staff_details_view.dart';
import 'package:omifit_studio/view/organization/staff/staff_details/pages/tablet_staff_details_view.dart';

class StaffDetailsView extends StatelessWidget {
  final GetStaffListReq? stafffilter;
  final String uid;
  const StaffDetailsView({super.key, required this.uid, this.stafffilter});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: const MobileStaffDetailsView(),
      tablet: const TabletStaffDetailsView(),
      desktop: DesktopStaffDetailsView(stafffilter, uid: uid),
      tv: DesktopStaffDetailsView(stafffilter, uid: uid),
    );
  }
}
