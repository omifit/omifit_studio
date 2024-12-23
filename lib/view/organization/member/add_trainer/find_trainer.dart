import 'package:flutter_animate/flutter_animate.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:omifit_studio/data/home/member/model/get_memberlist_model.dart';
import 'package:omifit_studio/data/home/staff/model/get_stafflist_model.dart';
import 'package:omifit_studio/data/home/staff/model/student/add_student_model.dart';
import 'package:omifit_studio/utils/parse.dart';
import 'package:omifit_studio/utils/utils.dart';
import 'package:omifit_studio/view/organization/member/member/widget/mem_card.dart';
import 'package:omifit_studio/view/organization/staff/staff_view_model.dart';
import 'package:omifit_studio/widget/imageicon/profile_img.dart';

class FindTrainerView extends ConsumerStatefulWidget {
  final GetMemberListReq? memberfilter;
  final String memuid;
  const FindTrainerView(this.memberfilter, this.memuid, {super.key});
  @override
  ConsumerState<FindTrainerView> createState() => _FindTrainerViewState();
}

class _FindTrainerViewState extends ConsumerState<FindTrainerView> {
  final TextEditingController _searchController = TextEditingController();
  String? selectedUid;
  Color headerColor = const Color.fromARGB(255, 55, 54, 58);
  Color bgColor = darkBlack;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      getStafflist();
    });

    super.initState();
  }

  void getStafflist() {
    ref.read(staffViewModelProvider).getstafflist(
        context,
        const GetStaffListReq(
          page: 1,
          limit: 300,
        ));
  }

  @override
  Widget build(BuildContext context) {
    final StaffViewModel staffViewModel = ref.watch(staffViewModelProvider);
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: headerColor,
        title: const Text(
          "Add Trainer",
          style: TextStyle(
            color: kWhite,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            HugeIcons.strokeRoundedArrowLeft01,
            color: kWhite,
          ),
          onPressed: () {
            context.pop();
          },
        ),
      ),
      bottomNavigationBar: selectedUid == null
          ? null
          : Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: FilledBtn(
                  isLoading: staffViewModel.loadingSearchMember,
                  color: primaryColor,
                  text: "Assign Trainer",
                  onPressed: () {
                    if (selectedUid != null) {
                      staffViewModel.assignTrainer(
                          context,
                          AddStudentReq(
                            teacherId: selectedUid,
                            studentId: widget.memuid,
                            assignDate: DateTime.now(),
                          ),
                          widget.memuid,
                          widget.memberfilter);
                    }
                  },
                ),
              ),
            ).animate().slideY(end: 0, begin: 0.1),
      body: SingleChildScrollView(
        child: PaddedColumn(
          mainAxisSize: MainAxisSize.min,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          children: [
            gapH25,
            ...List.generate(
                staffViewModel
                        .geStaffListRes?.body?.organizationMembers?.length ??
                    0, (index) {
              return Container(
                child: ListTile(
                  tileColor: selectedUid ==
                          staffViewModel.geStaffListRes?.body
                              ?.organizationMembers?[index].user?.id
                      ? primaryColor.withOpacity(0.1)
                      : Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(
                      color: selectedUid ==
                              staffViewModel.geStaffListRes?.body
                                  ?.organizationMembers?[index].user?.id
                          ? primaryColor
                          : Colors.transparent,
                      width: 1,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      selectedUid = staffViewModel.geStaffListRes?.body
                          ?.organizationMembers?[index].user?.id;
                    });
                  },
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: kGrey,
                    child: SizedBox(
                      width: 48,
                      child: InkWell(
                        onTap: () async {
                          await showDialog(
                            context: context,
                            builder: (context) => imageDialog(
                                getprofileurl(staffViewModel, index)),
                          );
                        },
                        child: ProfileImg(
                          url: getprofileurl(staffViewModel, index),
                          height: 48,
                        ),
                      ),
                    ),
                  ),
                  title: Text(
                    staffViewModel.geStaffListRes?.body
                            ?.organizationMembers?[index].user?.name ??
                        "",
                    style: const TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 15,
                    ),
                  ),
                  subtitle: Text(
                    remove91(staffViewModel.geStaffListRes?.body
                        ?.organizationMembers?[index].user?.phoneNumber),
                    style: const TextStyle(
                      color: kGrey,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: Icon(
                    selectedUid ==
                            staffViewModel.getMemberListRes?.body
                                ?.organizationMembers?[index].user?.id
                        ? HugeIcons.strokeRoundedCheckmarkCircle01
                        : Icons.arrow_forward_ios_rounded,
                    color: selectedUid ==
                            staffViewModel.getMemberListRes?.body
                                ?.organizationMembers?[index].user?.id
                        ? primaryColor
                        : kWhite,
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }

  String getprofileurl(StaffViewModel staffViewModel, int index) {
    return (staffViewModel.geStaffListRes?.body?.organizationMembers?[index]
                    .user?.profileImage ==
                null ||
            staffViewModel.geStaffListRes?.body?.organizationMembers?[index]
                    .user?.profileImage ==
                '')
        ? damiProfile(
            stringTogender(staffViewModel.geStaffListRes?.body
                ?.organizationMembers?[index].user?.gender),
            staffViewModel.geStaffListRes?.body?.organizationMembers?[index]
                    .user?.dateOfBirth ??
                "")
        : staffViewModel.geStaffListRes!.body!.organizationMembers![index].user!
            .profileImage!;
  }
}
