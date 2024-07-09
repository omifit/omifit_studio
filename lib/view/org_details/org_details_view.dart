import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/org_details/pages/desktop_org_details_view.dart';
import 'package:omifit/view/org_details/pages/mobile_org_details_view.dart';
import 'package:omifit/view/org_details/pages/tablet_org_details_view.dart';


class OrgDetailsView extends StatelessWidget {
  const OrgDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: MobileOrgDetailsView(),
        tablet: TabletOrgDetailsView(),
        desktop: DesktopOrgDetailsView(),
        tv: DesktopOrgDetailsView(),
      );
  }
}