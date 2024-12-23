import 'package:omifit_studio/utils/utils.dart';
import 'package:omifit_studio/view/organization/finance/pages/desktop_finance_view.dart';
import 'package:omifit_studio/view/organization/finance/pages/mobile_finance_view.dart';
import 'package:omifit_studio/view/organization/finance/pages/tablet_finance_view.dart';

class FinanceView extends StatelessWidget {
  const FinanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: MobileFinanceView(),
      tablet: TabletFinanceView(),
      desktop: DesktopFinanceView(),
      tv: DesktopFinanceView(),
    );
  }
}
