import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/home/sign_in/pages/desktop_sign_in_view.dart';
import 'package:omifit/view/home/sign_in/pages/mobile_sign_in_view.dart';
import 'package:omifit/view/home/sign_in/pages/tablet_sign_in_view.dart';


class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: MobileSignInView(),
        tablet: TabletSignInView(),
        desktop: DesktopSignInView(),
        tv: DesktopSignInView(),
      );
  }
}