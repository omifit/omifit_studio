import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/profile/pages/desktop_profile_view.dart';
import 'package:omifit/view/profile/pages/mobile_profile_view.dart';
import 'package:omifit/view/profile/pages/tablet_profile_view.dart';

class ProfileView extends ConsumerStatefulWidget {
  final bool isBack;
  const ProfileView({super.key, required this.isBack});

  @override
  ConsumerState<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends ConsumerState<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: MobileProfileView(isBack: widget.isBack),
      tablet: TabletProfileView(isBack: widget.isBack),
      desktop: DesktopProfileView(isBack: widget.isBack),
      tv: DesktopProfileView(isBack: widget.isBack),
    );
  }
}
