import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/organization/dashboard/widget/ageinfo_widget.dart';
import 'package:omifit/view/organization/dashboard/widget/birthday_widget.dart';
import 'package:omifit/view/organization/dashboard/widget/expense_widget.dart';
import 'package:omifit/view/organization/dashboard/widget/expire_widget.dart';
import 'package:omifit/view/organization/dashboard/widget/expiresoon_widget.dart';
import 'package:omifit/view/organization/dashboard/widget/genderinfo_widget.dart';
import 'package:omifit/view/organization/dashboard/widget/income_widget.dart';
import 'package:omifit/view/organization/dashboard/widget/info_widget.dart';
import 'package:omifit/view/organization/dashboard/widget/newmem_graph_widget.dart';
import 'package:omifit/view/organization/dashboard/widget/professioninfo_widget.dart';
import 'package:omifit/view/organization/dashboard/widget/rankboard_widget.dart';
import 'package:omifit/view/organization/dashboard/widget/realtime_widget.dart';
import 'package:omifit/view/organization/dashboard/widget/weekstats_widget.dart';
import 'package:omifit/view/organization/organization_view_model.dart';

class TabletDashboardView extends ConsumerStatefulWidget {
  const TabletDashboardView({super.key});

  @override
  ConsumerState<TabletDashboardView> createState() =>
      _TabletDashboardViewState();
}

class _TabletDashboardViewState extends ConsumerState<TabletDashboardView> {
  @override
  Widget build(BuildContext context) {
    final OrganizationViewModel organizationViewModel =
        ref.watch(organizationViewModelProvider);
    return Scaffold(
        body: SingleChildScrollView(
      child: PaddedColumn(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          gapH20,
          const InfoWidget(),
          gapH20,
          const NewMemberGraph(),
          gapH20,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    const RealTimeMemberWidget(),
                    gapH20,
                    const IncomeWidget(),
                    gapH20,
                    const ExpenseWidget(),
                    gapH20,
                    const GenderInfo(),
                    gapH20,
                  ],
                ),
              ),
              gapW20,
              Expanded(
                child: Column(
                  children: [
                    const ProfessionInfo(),
                    gapH20,
                    const BirthdayWidget(),
                    gapH20,
                    const ExpireSoonWidget(),
                    gapH20,
                    const ExpireWidget(),
                    gapH20,
                    const AgeInfo(),
                    gapH20,
                  ],
                ),
              ),
            ],
          ),
          gapH20,
          const WeekStats(),
          gapH20,
          const RankboardWidget(),
          gapH20,
        ],
      ),
    ));
  }
}
