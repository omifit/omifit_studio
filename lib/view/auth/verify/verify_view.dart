import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/auth/verify/pages/desktop_verify_view.dart';
import 'package:omifit/view/auth/verify/pages/mobile_verify_view.dart';
import 'package:omifit/view/auth/verify/pages/tablet_verify_view.dart';


class VerifyView extends StatelessWidget {
  const VerifyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: MobileVerifyView(),
        tablet: TabletVerifyView(),
        desktop: DesktopVerifyView(),
        tv: DesktopVerifyView(),
      );
  }
}