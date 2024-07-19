import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(15),
          elevation: 0,
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        onPressed: () {},
        icon: const Icon(CupertinoIcons.add_circled, color: kWhite),
        label: const Text(
          "Add Staff",
          style: TextStyle(
            color: kWhite,
            fontSize: 14,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const ListTile(
                tileColor: kRedbg,
                visualDensity: VisualDensity(vertical: -4),
                title: Text(
                  "Deleted Staff",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: kRed,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: kRed,
                  size: 14,
                )),
            gapH20,
            PaddedColumn(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
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
                        HapticFeedback.lightImpact();
                        context.pushNamed(AppRoute.memberDetails.name);
                      },
                    ),
                  ),
                ),
                gapH10,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
