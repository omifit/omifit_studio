import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/home/home_view_model.dart';
import 'package:omifit/view/home/staff/staff/widget/staff_card.dart';

class MobileStaffView extends ConsumerStatefulWidget {
  const MobileStaffView({super.key});

  @override
  ConsumerState<MobileStaffView> createState() => _MobileStaffViewState();
}

class _MobileStaffViewState extends ConsumerState<MobileStaffView> {
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
                  role: "Trainer",
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
