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

class FindMemberView extends ConsumerStatefulWidget {
  final GetStaffListReq? stafffilter;
  final String staffuid;
  const FindMemberView(this.stafffilter, this.staffuid, {super.key});
  @override
  ConsumerState<FindMemberView> createState() => _FindMemberViewState();
}

class _FindMemberViewState extends ConsumerState<FindMemberView> {
  final TextEditingController _searchController = TextEditingController();
  String? selectedUid;
  Color headerColor = const Color.fromARGB(255, 55, 54, 58);
  Color bgColor = darkBlack;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      getmemberlist();
    });

    super.initState();
  }

  void getmemberlist() {
    ref.read(staffViewModelProvider).getmemberlist(
        context,
        const GetMemberListReq(
          nameORNumber: "",
          page: 1,
          limit: 20,
        ));
  }

  @override
  Widget build(BuildContext context) {
    final StaffViewModel staffViewModel = ref.watch(staffViewModelProvider);
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: headerColor,
        elevation: 0,
        title: const Text(
          "Add Student",
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
            Navigator.pop(context);
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
                  text: "Add Student",
                  onPressed: () {
                    if (selectedUid != null) {
                      staffViewModel.addStudent(
                          context,
                          AddStudentReq(
                            teacherId: widget.staffuid,
                            studentId: selectedUid,
                            assignDate: DateTime.now(),
                          ),
                          widget.staffuid,
                          widget.stafffilter);
                    }
                  },
                ),
              ),
            ).animate().slideY(end: 0, begin: 0.1),
      body: SingleChildScrollView(
        child: PaddedColumn(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              color: headerColor,
              padding: EdgeInsets.symmetric(
                  horizontal: Responsive.isMobile(context) ? 16 : 26,
                  vertical: 28),
              child: TextFormField(
                controller: _searchController,
                cursorColor: primaryColor,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                  fillColor: kGrey.withOpacity(0.1),
                  prefixIcon: const Icon(
                    HugeIcons.strokeRoundedSearch01,
                    color: kGrey,
                  ),
                  hintText: 'Search member by phone number or name',
                  hintStyle: const TextStyle(
                    color: kGrey,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onChanged: (value) {
                  if (value.trim().length > 3) {
                    ref.read(staffViewModelProvider).getmemberlist(
                        context,
                        GetMemberListReq(
                          nameORNumber: value.trim(),
                          page: 1,
                          limit: 20,
                        ));
                  } else {
                    getmemberlist();
                  }
                  selectedUid = null;
                  setState(() {});
                },
                validator: (value) => value!.isEmpty
                    ? "Phone number can't be empty"
                    : value.length < 10
                        ? "Phone number must be 10 digits"
                        : null,
              ),
            ),
            gapH25,
            ...List.generate(
                staffViewModel
                        .getMemberListRes?.body?.organizationMembers?.length ??
                    0, (index) {
              return Container(
                child: ListTile(
                  tileColor: selectedUid ==
                          staffViewModel.getMemberListRes?.body
                              ?.organizationMembers?[index].user?.id
                      ? primaryColor.withOpacity(0.1)
                      : Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(
                      color: selectedUid ==
                              staffViewModel.getMemberListRes?.body
                                  ?.organizationMembers?[index].user?.id
                          ? primaryColor
                          : Colors.transparent,
                      width: 1,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      selectedUid = staffViewModel.getMemberListRes?.body
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
                    staffViewModel.getMemberListRes?.body
                            ?.organizationMembers?[index].user?.name ??
                        "",
                    style: const TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 15,
                    ),
                  ),
                  subtitle: Text(
                    remove91(staffViewModel.getMemberListRes?.body
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
    return (staffViewModel.getMemberListRes?.body?.organizationMembers?[index]
                    .user?.profileImage ==
                null ||
            staffViewModel.getMemberListRes?.body?.organizationMembers?[index]
                    .user?.profileImage ==
                '')
        ? damiProfile(
            stringTogender(staffViewModel.getMemberListRes?.body
                ?.organizationMembers?[index].user?.gender),
            staffViewModel.getMemberListRes?.body?.organizationMembers?[index]
                    .user?.dateOfBirth ??
                "")
        : staffViewModel.getMemberListRes!.body!.organizationMembers![index]
            .user!.profileImage!;
  }
}
