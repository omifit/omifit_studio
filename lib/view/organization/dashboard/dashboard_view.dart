import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/organization/dashboard/pages/desktop_dashboard_view.dart';
import 'package:omifit/view/organization/dashboard/pages/mobile_dashboard_view.dart';
import 'package:omifit/view/organization/dashboard/pages/tablet_dashboard_view.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveDashboard(
      mobile: MobileDashboardView(),
      tablet: TabletDashboardView(),
      desktop: DesktopDashboardView(),
      tv: DesktopDashboardView(),
    );
  }
}
