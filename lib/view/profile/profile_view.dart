import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/profile/pages/desktop_profile_view.dart';
import 'package:omifit/view/profile/pages/mobile_profile_view.dart';
import 'package:omifit/view/profile/pages/tablet_profile_view.dart';


class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: MobileProfileView(),
        tablet: TabletProfileView(),
        desktop: DesktopProfileView(),
        tv: DesktopProfileView(),
      );
  }
}