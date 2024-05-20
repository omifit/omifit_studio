import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/home/dashboard/pages/desktop_dashboard_view.dart';
import 'package:omifit/view/home/dashboard/pages/mobile_dashboard_view.dart';
import 'package:omifit/view/home/dashboard/pages/tablet_dashboard_view.dart';

class DashboardView extends ConsumerWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: ResponsiveDashboard(
        mobile: MobileDashboardView(),
        tablet: TabletDashboardView(),
        desktop: DesktopDashboardView(),
        tv: DesktopDashboardView(),
      ),
    );
  }
}
