import 'package:omifit_studio/data/home/member/model/get_memberlist_model.dart';
import 'package:omifit_studio/utils/utils.dart';
import 'package:omifit_studio/view/organization/member/member_details/pages/desktop_member_details_view.dart';
import 'package:omifit_studio/view/organization/member/member_details/pages/mobile_member_details_view.dart';
import 'package:omifit_studio/view/organization/member/member_details/pages/tablet_member_details_view.dart';

class MemberDetailsView extends StatelessWidget {
  final GetMemberListReq? memberfilter;
  final String uid;
  const MemberDetailsView({super.key, required this.uid, this.memberfilter});

  @override
  Widget build(BuildContext context) {
    return ResponsiveMemberDetails(
      mobile: MobileMemberDetailsView(uid: uid),
      tablet: TabletMemberDetailsView(uid: uid),
      desktop: DesktopMemberDetailsView(memberfilter, uid: uid),
      tv: DesktopMemberDetailsView(memberfilter, uid: uid),
    );
  }
}
