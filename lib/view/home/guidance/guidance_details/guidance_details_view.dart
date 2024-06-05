import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/home/guidance/guidance_details/pages/desktop_guidance_details_view.dart';
import 'package:omifit/view/home/guidance/guidance_details/pages/mobile_guidance_details_view.dart';
import 'package:omifit/view/home/guidance/guidance_details/pages/tablet_guidance_details_view.dart';


class GuidanceDetailsView extends StatelessWidget {
  const GuidanceDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: MobileGuidanceDetailsView(),
        tablet: TabletGuidanceDetailsView(),
        desktop: DesktopGuidanceDetailsView(),
        tv: DesktopGuidanceDetailsView(),
      );
  }
}