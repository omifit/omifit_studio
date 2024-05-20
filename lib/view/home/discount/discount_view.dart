import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/home/discount/pages/desktop_discount_view.dart';
import 'package:omifit/view/home/discount/pages/mobile_discount_view.dart';
import 'package:omifit/view/home/discount/pages/tablet_discount_view.dart';


class DiscountView extends StatelessWidget {
  const DiscountView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: MobileDiscountView(),
        tablet: TabletDiscountView(),
        desktop: DesktopDiscountView(),
        tv: DesktopDiscountView(),
      );
  }
}