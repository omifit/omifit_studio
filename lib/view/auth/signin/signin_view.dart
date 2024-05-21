import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/auth/signin/pages/desktop_signin_view.dart';
import 'package:omifit/view/auth/signin/pages/mobile_signin_view.dart';
import 'package:omifit/view/auth/signin/pages/tablet_signin_view.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: MobileSigninView(),
      tablet: TabletSigninView(),
      desktop: DesktopSigninView(),
      tv: DesktopSigninView(),
    );
}
}
