import 'package:flutter/cupertino.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/home/member/dialog/addmember_dialog.dart';
import 'package:omifit/view/home/member/member/widget/joindate_dropdown.dart';
import 'package:omifit/view/home/member/member/widget/mem_card.dart';
import 'package:omifit/view/home/member/member/widget/status_dropdown.dart';
import 'package:omifit/view/home/member/member_view_model.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class DesktopMemberView extends ConsumerStatefulWidget {
  const DesktopMemberView({super.key});

  @override
  ConsumerState<DesktopMemberView> createState() => _DesktopMemberViewState();
}

class _DesktopMemberViewState extends ConsumerState<DesktopMemberView> {
  @override
  Widget build(BuildContext context) {
    final MemberViewModel memberViewModel = ref.read(memberViewModelProvider);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: darkBlack,
            borderRadius: BorderRadius.all(Radius.circular(32)),
          ),
          child: PaddedColumn(
            crossAxisAlignment: CrossAxisAlignment.start,
            padding: const EdgeInsets.symmetric(horizontal: 25),
            children: [
              gapH16,
              Row(
                children: [
                  const Text(
                    "Members",
                    style: TextStyle(
                      color: kWhite,
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
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
                  const Text(
                    "Join Date : ",
                    style: TextStyle(
                      color: kGrey,
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  gapW10,
                  JoindateDropdown(
                      onChange: (value) {}, initialValue: "Lifetime"),
                  gapW10,
                  StatusDropdown(onChange: (value) {}, initialValue: "Active"),
                  gapW10,
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(15),
                      elevation: 0,
                      backgroundColor: const Color.fromRGBO(194, 117, 39, 0.2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    onPressed: () {
                      WoltModalSheet.show(
                          minDialogWidth: 900,
                          maxDialogWidth: 900,
                          context: context,
                          barrierDismissible: false,
                          pageIndexNotifier:
                              memberViewModel.addMemberDialogPage,
                          pageListBuilder: (BuildContext context) {
                            return [
                              AddMemberDialog.build(context),
                              PlanAddMemberDialog.build(context, ref),
                              PaymentAddMemberDialog.build(context, ref),
                            ];
                          });
                    },
                    icon: const Icon(CupertinoIcons.add_circled,
                        color: secondaryColor),
                    label: const Text(
                      "Add Member",
                      style: TextStyle(
                        color: secondaryColor,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
              gapH5,
              const Divider(color: kGrey, thickness: 0.2),
              gapH10,
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                height: 42,
                decoration: BoxDecoration(
                  color: kyellowbg,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: PaddedRow(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 30,
                      child: Text(
                        "ID",
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 48,
                      child: Text(
                        "Profile",
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 40.w,
                      child: const Text(
                        "Name",
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 90,
                      child: Text(
                        "Phone",
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 70,
                      child: Text(
                        "Age",
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 80,
                      child: Text(
                        "Join Date",
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 190,
                      child: Text(
                        "Coach",
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 80,
                      child: Text(
                        "Status",
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                      child: Text(
                        "Action",
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              gapH15,
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: PaddedColumn(
                    children: [
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
