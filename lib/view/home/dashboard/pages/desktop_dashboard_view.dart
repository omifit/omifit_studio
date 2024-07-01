import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/home/dashboard/widget/ageinfo_widget.dart';
import 'package:omifit/view/home/dashboard/widget/birthday_widget.dart';
import 'package:omifit/view/home/dashboard/widget/expense_widget.dart';
import 'package:omifit/view/home/dashboard/widget/expire_widget.dart';
import 'package:omifit/view/home/dashboard/widget/expiresoon_widget.dart';
import 'package:omifit/view/home/dashboard/widget/genderinfo_widget.dart';
import 'package:omifit/view/home/dashboard/widget/income_widget.dart';
import 'package:omifit/view/home/dashboard/widget/info_widget.dart';
import 'package:omifit/view/home/dashboard/widget/newmem_graph_widget.dart';
import 'package:omifit/view/home/dashboard/widget/professioninfo_widget.dart';
import 'package:omifit/view/home/dashboard/widget/rankboard_widget.dart';
import 'package:omifit/view/home/dashboard/widget/realtime_widget.dart';
import 'package:omifit/view/home/dashboard/widget/weekstats_widget.dart';

class DesktopDashboardView extends ConsumerStatefulWidget {
  const DesktopDashboardView({super.key});

  @override
  ConsumerState<DesktopDashboardView> createState() =>
      _DesktopDashboardViewState();
}

class _DesktopDashboardViewState extends ConsumerState<DesktopDashboardView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: PaddedColumn(
            padding: EdgeInsets.symmetric(horizontal: 16),
            children: [
              SizedBox(height: 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // left side
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InfoWidget(),   
                        SizedBox(height: 20),
                        NewMemberGraph(),
                        SizedBox(height: 20),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  IncomeWidget(),
                                  SizedBox(height: 20),
                                  ExpenseWidget(),
                                  SizedBox(height: 20),
                                  RankboardWidget(),
                                ],
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                              child: Column(
                                children: [
                                  ProfessionInfo(),
                                  SizedBox(height: 20),
                                  GenderInfo(),
                                  SizedBox(height: 20),
                                  AgeInfo(),
                                  SizedBox(height: 20),
                                  WeekStats(),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  // right side
                  Expanded(
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
