import 'package:flutter/cupertino.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/organization/member/dialog/addmember_dialog.dart';
import 'package:omifit/view/organization/member/member/widget/joindate_dropdown.dart';
import 'package:omifit/view/organization/member/member/widget/mem_card.dart';
import 'package:omifit/view/organization/member/member/widget/status_dropdown.dart';
import 'package:omifit/view/organization/member/member_view_model.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class TabletMemberView extends ConsumerStatefulWidget {
  const TabletMemberView({super.key});

  @override
  ConsumerState<TabletMemberView> createState() => _TabletMemberViewState();
}

class _TabletMemberViewState extends ConsumerState<TabletMemberView> {
  @override
  Widget build(BuildContext context) {
    final MemberViewModel memberViewModel = ref.watch(memberViewModelProvider);
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
            WoltModalSheet.show(
                minDialogWidth: 0.9.sw,
                maxDialogWidth: 0.9.sw,
                context: context,
                barrierDismissible: false,
                modalTypeBuilder: (context) {
                  return WoltModalType.dialog;
                },
                pageIndexNotifier: memberViewModel.addMemberDialogPage,
                pageListBuilder: (BuildContext context) {
                  return [
                    AddMemberDialog.build(context),
                    PlanAddMemberDialog.build(context, ref),
                    PaymentAddMemberDialog.build(context, ref),
                  ];
                });
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
            padding: const EdgeInsets.symmetric(horizontal: 25),
            children: [
              gapH10,
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: const BoxDecoration(
                  color: darkBlack,
                  borderRadius: BorderRadius.all(Radius.circular(22)),
                ),
                child: Row(
                  children: [
                    const Text(
                      "Members",
                      style: TextStyle(
                        color: kWhite,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    gapW10,
                    const CircleAvatar(
                      radius: 15,
                      backgroundColor: kyellowbg,
                      child: Text(
                        "22",
                        style: TextStyle(color: primaryColor, fontSize: 12),
                      ),
                    ),
                    const Spacer(),
                    JoindateDropdown(
                        onChange: (value) {}, initialValue: "Lifetime"),
                    gapW10,
                    StatusDropdown(
                        onChange: (value) {}, initialValue: "Active"),
                  ],
                ),
              ),
              gapH10,
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
