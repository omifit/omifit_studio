import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/organization/guidance/guidance/pages/desktop_guidance_view.dart';
import 'package:omifit/view/organization/guidance/guidance/pages/mobile_guidance_view.dart';
import 'package:omifit/view/organization/guidance/guidance/pages/tablet_guidance_view.dart';


class GuidanceView extends StatelessWidget {
  const GuidanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: MobileGuidanceView(),
        tablet: TabletGuidanceView(),
        desktop: DesktopGuidanceView(),
        tv: DesktopGuidanceView(),
      );
  }
}