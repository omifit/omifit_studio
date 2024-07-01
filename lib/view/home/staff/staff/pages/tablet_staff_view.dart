import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/home/home_view_model.dart';
import 'package:omifit/view/home/staff/staff/widget/staff_card.dart';

class TabletStaffView extends ConsumerStatefulWidget {
  const TabletStaffView({super.key});

  @override
  ConsumerState<TabletStaffView> createState() => _TabletStaffViewState();
}

class _TabletStaffViewState extends ConsumerState<TabletStaffView> {
  @override
  Widget build(BuildContext context) {
    final HomeViewModel homeViewModel = ref.watch(homeViewModelProvider);
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: PaddedColumn(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          children: [
            gapH10,
            ...List.generate(
              50,
              (index) => Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: StaffCard(
                  memid: '101',
                  name: "Ayush Maji",
                  profilePic: "https://i.imgur.com/UnWWlu3.png",
                  phone: "9876543210",
                  age: "25",
                  joinDate: "12/12/2021",
                  totalMember: "10",
                  onPressed: () {
                    context.pushNamed(AppRoute.memberDetails.name);
                  },
                ),
              ),
            ),
            gapH10,
          ],
        ),
      ),
    );
  }
}
