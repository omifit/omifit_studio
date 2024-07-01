import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/home/home_view_model.dart';
import 'package:omifit/view/home/member/member/widget/mem_card.dart';

class TabletMemberView extends ConsumerStatefulWidget {
  const TabletMemberView({super.key});

  @override
  ConsumerState<TabletMemberView> createState() => _TabletMemberViewState();
}

class _TabletMemberViewState extends ConsumerState<TabletMemberView> {
  @override
  Widget build(BuildContext context) {
    final HomeViewModel homeViewModel = ref.watch(homeViewModelProvider);
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: PaddedColumn(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        children: [
          gapH20,
          ...List.generate(
            50,
            (index) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: MemCard(
                memid: '101',
                name: "Ayush Maji",
                profilePic: "https://i.imgur.com/UnWWlu3.png",
                phone: "9876543210",
                age: "25",
                joinDate: "12/12/2021",
                coachPic: "https://i.imgur.com/UnWWlu3.png",
                coachName: "vijay thalapathi roudy",
                onPressed: () {
                  context.pushNamed(AppRoute.memberDetails.name);
                },
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
