import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/home/lead/pages/desktop_lead_view.dart';
import 'package:omifit/view/home/lead/pages/mobile_lead_view.dart';
import 'package:omifit/view/home/lead/pages/tablet_lead_view.dart';


class LeadView extends StatelessWidget {
  const LeadView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: MobileLeadView(),
        tablet: TabletLeadView(),
        desktop: DesktopLeadView(),
        tv: DesktopLeadView(),
      );
  }
}