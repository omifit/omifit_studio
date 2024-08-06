import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/organization/member/member_details/pages/desktop_member_details_view.dart';
import 'package:omifit/view/organization/member/member_details/pages/mobile_member_details_view.dart';
import 'package:omifit/view/organization/member/member_details/pages/tablet_member_details_view.dart';

class MemberDetailsView extends StatelessWidget {
  const MemberDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveMemberDetails(
      mobile: MobileMemberDetailsView(),
      tablet: TabletMemberDetailsView(),
      desktop: DesktopMemberDetailsView(),
      tv: DesktopMemberDetailsView(),
    );
  }
}
