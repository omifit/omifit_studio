import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/organization/member/dialog/addmember_dialog.dart';
import 'package:omifit/view/organization/member/member/widget/mem_card.dart';
import 'package:omifit/view/organization/member/member/widget/status_dropdown.dart';
import 'package:omifit/view/organization/member/member_view_model.dart';
import 'package:omifit/view/organization/organization_view_model.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class MobileMemberView extends ConsumerStatefulWidget {
  const MobileMemberView({super.key});

  @override
  ConsumerState<MobileMemberView> createState() => _MobileMemberViewState();
}

class _MobileMemberViewState extends ConsumerState<MobileMemberView> {
  @override
  Widget build(BuildContext context) {
    final MemberViewModel memberViewModel = ref.watch(memberViewModelProvider);
    final OrganizationViewModel organizationViewModel =
        ref.watch(organizationViewModelProvider);
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
