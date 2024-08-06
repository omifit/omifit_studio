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

class DesktopDashboardView extends ConsumerStatefulWidget {
  const DesktopDashboardView({super.key});

  @override
  ConsumerState<DesktopDashboardView> createState() =>
      _DesktopDashboardViewState();
}

class _DesktopDashboardViewState extends ConsumerState<DesktopDashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: PaddedColumn(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              gapH30,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // left side
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const InfoWidget(),
                        gapH20,
                        const NewMemberGraph(),
                        gapH20,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const IncomeWidget(),
                                  gapH20,
                                  const ExpenseWidget(),
                                  gapH20,
                                  const RankboardWidget(),
                                ],
                              ),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: Column(
                                children: [
                                  const ProfessionInfo(),
                                  gapH20,
                                  const GenderInfo(),
                                  gapH20,
                                  const AgeInfo(),
                                  gapH20,
                                  const WeekStats(),
                                ],
                              ),
                            ),
                          ],
                        ),
                        gapH30,
                      ],
                    ),
                  ),
                  gapW20,
                  // right side
                  const Expanded(
                    child: Column(
                      children: [
                        RealTimeMemberWidget(),
                        SizedBox(height: 20),
                        BirthdayWidget(),
                        SizedBox(height: 20),
                        ExpireSoonWidget(),
                        SizedBox(height: 20),
                        ExpireWidget(),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
