import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/home/dashboard/widget/ageinfo_widget.dart';
import 'package:omifit/view/home/dashboard/widget/birthday_widget.dart';
import 'package:omifit/view/home/dashboard/widget/expense_widget.dart';
import 'package:omifit/view/home/dashboard/widget/expire_widget.dart';
import 'package:omifit/view/home/dashboard/widget/expiresoon_widget.dart';
import 'package:omifit/view/home/dashboard/widget/genderinfo_widget.dart';
import 'package:omifit/view/home/dashboard/widget/income_widget.dart';
import 'package:omifit/view/home/dashboard/widget/info_widget.dart';
import 'package:omifit/view/home/dashboard/widget/professioninfo_widget.dart';
import 'package:omifit/view/home/dashboard/widget/rankboard_widget.dart';
import 'package:omifit/view/home/dashboard/widget/realtime_widget.dart';
import 'package:omifit/view/home/dashboard/widget/weekstats_widget.dart';
import 'package:omifit/view/home/home_view_model.dart';

class MobileDashboardView extends ConsumerStatefulWidget {
  const MobileDashboardView({super.key});

  @override
  ConsumerState<MobileDashboardView> createState() =>
      _MobileDashboardViewState();
}

class _MobileDashboardViewState extends ConsumerState<MobileDashboardView> {
  @override
  Widget build(BuildContext context) {
    final HomeViewModel homeViewModel = ref.watch(homeViewModelProvider);
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
