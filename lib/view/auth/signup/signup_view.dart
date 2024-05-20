import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/auth/signup/pages/desktop_signup_view.dart';
import 'package:omifit/view/auth/signup/pages/mobile_signup_view.dart';
import 'package:omifit/view/auth/signup/pages/tablet_signup_view.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: MobileSignupView(),
      tablet: TabletSignupView(),
      desktop: DesktopSignupView(),
      tv: DesktopSignupView(),
    );
  }
}
