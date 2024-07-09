import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/profile/pages/desktop_profile_view.dart';
import 'package:omifit/view/profile/pages/mobile_profile_view.dart';
import 'package:omifit/view/profile/pages/tablet_profile_view.dart';

class ProfileView extends StatelessWidget {
  final bool isBack;
  const ProfileView({super.key, required this.isBack});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: MobileProfileView(isBack: isBack),
      tablet: TabletProfileView(isBack: isBack),
      desktop: DesktopProfileView(isBack: isBack),
      tv: DesktopProfileView(isBack: isBack),
    );
  }
}
