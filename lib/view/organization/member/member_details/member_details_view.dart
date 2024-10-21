import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/organization/member/member_details/pages/desktop_member_details_view.dart';
import 'package:omifit/view/organization/member/member_details/pages/mobile_member_details_view.dart';
import 'package:omifit/view/organization/member/member_details/pages/tablet_member_details_view.dart';

class MemberDetailsView extends StatelessWidget {
  final String uid;
  const MemberDetailsView({super.key, required this.uid});

  @override
  Widget build(BuildContext context) {
    return  ResponsiveMemberDetails(
      mobile: MobileMemberDetailsView(uid: uid),
      tablet: TabletMemberDetailsView(uid: uid),
      desktop: DesktopMemberDetailsView(uid: uid),
      tv: DesktopMemberDetailsView(uid: uid),
    );
  }
}
