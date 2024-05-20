import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/home/member/pages/desktop_member_view.dart';
import 'package:omifit/view/home/member/pages/mobile_member_view.dart';
import 'package:omifit/view/home/member/pages/tablet_member_view.dart';


class MemberView extends StatelessWidget {
  const MemberView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: MobileMemberView(),
        tablet: TabletMemberView(),
        desktop: DesktopMemberView(),
        tv: DesktopMemberView(),
      );
  }
}