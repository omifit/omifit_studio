import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/home/plan/pages/desktop_plan_view.dart';
import 'package:omifit/view/home/plan/pages/mobile_plan_view.dart';
import 'package:omifit/view/home/plan/pages/tablet_plan_view.dart';


class PlanView extends StatelessWidget {
  const PlanView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: MobilePlanView(),
        tablet: TabletPlanView(),
        desktop: DesktopPlanView(),
        tv: DesktopPlanView(),
      );
  }
}