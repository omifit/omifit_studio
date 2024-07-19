import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/profile/pages/desktop_profile_view.dart';
import 'package:omifit/view/profile/pages/mobile_profile_view.dart';
import 'package:omifit/view/profile/pages/tablet_profile_view.dart';
import 'package:omifit/view/profile/profile_view_model.dart';

class ProfileView extends ConsumerStatefulWidget {
  final bool isBack;
  const ProfileView({super.key, required this.isBack});

  @override
  ConsumerState<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends ConsumerState<ProfileView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      ref.read(profileViewModelProvider).userDetails(context);
    });
    super.initState();
  }

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
