import 'package:cupertino_modal_sheet/cupertino_modal_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/organization/member/add_member/addmember_view.dart';
import 'package:omifit/view/organization/member/member/widget/mem_card.dart';
import 'package:omifit/view/organization/member/member/widget/status_dropdown.dart';

class MobileMemberView extends ConsumerStatefulWidget {
  const MobileMemberView({super.key});

  @override
  ConsumerState<MobileMemberView> createState() => _MobileMemberViewState();
}

class _MobileMemberViewState extends ConsumerState<MobileMemberView> {
  @override
  Widget build(BuildContext context) {
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
          onPressed: () {
            HapticFeedback.lightImpact();
            showCupertinoModalSheet(
                context: context, builder: (context) => const AddMemberView());
          },
          icon: const Icon(CupertinoIcons.add_circled, color: kWhite),
          label: const Text(
            "Add Member",
            style: TextStyle(
              color: kWhite,
              fontSize: 14,
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: PaddedColumn(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              gapH10,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Total Members",
                    style: TextStyle(
                      color: kWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(),
                  StatusDropdown(onChange: (value) {}, initialValue: "Active"),
                ],
              ),
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
                      HapticFeedback.lightImpact();
                      context.pushNamed(AppRoute.memberDetails.name);
                    },
                  ),
                ),
              ),
              gapH100,
            ],
          ),
        ));
  }
}
