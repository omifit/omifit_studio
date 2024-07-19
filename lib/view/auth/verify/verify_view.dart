import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/auth/verify/pages/desktop_verify_view.dart';
import 'package:omifit/view/auth/verify/pages/mobile_verify_view.dart';
import 'package:omifit/view/auth/verify/pages/tablet_verify_view.dart';

class VerifyView extends StatelessWidget {
  final bool isLogin;
  const VerifyView({super.key, required this.isLogin});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: MobileVerifyView(isLogin),
      tablet: TabletVerifyView(isLogin),
      desktop: DesktopVerifyView(isLogin),
      tv: DesktopVerifyView(isLogin),
    );
  }
}
