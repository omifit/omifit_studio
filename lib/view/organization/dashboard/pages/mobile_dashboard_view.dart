import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/organization/dashboard/widget/ageinfo_widget.dart';
import 'package:omifit/view/organization/dashboard/widget/birthday_widget.dart';
import 'package:omifit/view/organization/dashboard/widget/expense_widget.dart';
import 'package:omifit/view/organization/dashboard/widget/expire_widget.dart';
import 'package:omifit/view/organization/dashboard/widget/expiresoon_widget.dart';
import 'package:omifit/view/organization/dashboard/widget/genderinfo_widget.dart';
import 'package:omifit/view/organization/dashboard/widget/income_widget.dart';
import 'package:omifit/view/organization/dashboard/widget/info_widget.dart';
import 'package:omifit/view/organization/dashboard/widget/professioninfo_widget.dart';
import 'package:omifit/view/organization/dashboard/widget/rankboard_widget.dart';
import 'package:omifit/view/organization/dashboard/widget/realtime_widget.dart';
import 'package:omifit/view/organization/dashboard/widget/weekstats_widget.dart';
import 'package:omifit/view/organization/organization_view_model.dart';

class MobileDashboardView extends ConsumerStatefulWidget {
  const MobileDashboardView({super.key});

  @override
  ConsumerState<MobileDashboardView> createState() =>
      _MobileDashboardViewState();
}

class _MobileDashboardViewState extends ConsumerState<MobileDashboardView> {
  @override
  Widget build(BuildContext context) {
    final OrganizationViewModel organizationViewModel =
        ref.watch(organizationViewModelProvider);
    return Scaffold(
        body: SingleChildScrollView(
      child: PaddedColumn(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        children: [
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              decoration: BoxDecoration(
                color: darkBlack,
                borderRadius: BorderRadius.circular(0),
              ),
              width: double.infinity,
              child: const InfoWidget()),
          const PaddedColumn(
              padding: EdgeInsets.symmetric(horizontal: 12),
              children: [
                SizedBox(height: 20),
                RealTimeMemberWidget(),
                SizedBox(height: 20),
                BirthdayWidget(),
                SizedBox(height: 20),
                ExpireSoonWidget(),
                SizedBox(height: 20),
                ExpireWidget(),
                SizedBox(height: 20),
                GenderInfo(),
                SizedBox(height: 20),
                ProfessionInfo(),
                SizedBox(height: 20),
                AgeInfo(),
                SizedBox(height: 20),
                WeekStats(),
                SizedBox(height: 20),
                RankboardWidget(),
                SizedBox(height: 20),
                IncomeWidget(),
                SizedBox(height: 20),
                ExpenseWidget(),
                SizedBox(height: 20),
                SizedBox(height: 20),
              ])
        ],
      ),
    ));
  }
}
