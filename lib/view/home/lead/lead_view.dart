import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/home/Lead/pages/desktop_Lead_view.dart';
import 'package:omifit/view/home/Lead/pages/mobile_Lead_view.dart';
import 'package:omifit/view/home/Lead/pages/tablet_Lead_view.dart';

class LeadView extends ConsumerWidget {
  const LeadView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: Responsive(
        mobile: MobileLeadView(),
        tablet: TabletLeadView(),
        desktop: DesktopLeadView(),
        tv: DesktopLeadView(),
      ),
    );
  }
}
