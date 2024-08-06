import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/organization/member/member/pages/desktop_member_view.dart';
import 'package:omifit/view/organization/member/member/pages/mobile_member_view.dart';
import 'package:omifit/view/organization/member/member/pages/tablet_member_view.dart';

class MemberView extends StatelessWidget {
  const MemberView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveMember(
      mobile: MobileMemberView(),
      tablet: TabletMemberView(),
      desktop: DesktopMemberView(),
      tv: DesktopMemberView(),
    );
  }
}
