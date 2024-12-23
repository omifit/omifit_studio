import 'package:cupertino_modal_sheet/cupertino_modal_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:omifit_studio/data/home/staff/model/get_stafflist_model.dart';
import 'package:omifit_studio/utils/json_parse.dart';
import 'package:omifit_studio/utils/parse.dart';
import 'package:omifit_studio/utils/utils.dart';
import 'package:omifit_studio/view/organization/member/member/widget/pagination_dropdown.dart';
import 'package:omifit_studio/view/organization/staff/dialog/add_staff/find_user_view.dart';
import 'package:omifit_studio/view/organization/staff/staff/widget/staff_card.dart';
import 'package:omifit_studio/view/organization/staff/staff_view_model.dart';

class DesktopStaffView extends ConsumerStatefulWidget {
  const DesktopStaffView({super.key});

  @override
  ConsumerState<DesktopStaffView> createState() => _DesktopStaffViewState();
}

class _DesktopStaffViewState extends ConsumerState<DesktopStaffView> {
  GetStaffListReq stafffilter = const GetStaffListReq(
    page: 1,
    limit: 30,
  );
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      getData();
    });
    super.initState();
  }

  void getData() {
    ref.read(staffViewModelProvider).getstafflist(context, stafffilter);
  }

  @override
  Widget build(BuildContext context) {
    final StaffViewModel staffViewModel = ref.watch(staffViewModelProvider);
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
                    "Staffs",
                    style: TextStyle(
                      color: kWhite,
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  gapW14,
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(15),
                      elevation: 0,
                      backgroundColor: const Color.fromRGBO(194, 117, 39, 0.2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60),
                      ),
                    ),
                    onPressed: () {
                      showCupertinoModalSheet(
                          context: context,
                          builder: (_) =>
                              const FindUserStaffView(GetStaffListReq()));
                    },
                    icon: const Icon(CupertinoIcons.add_circled,
                        color: secondaryColor),
                    label: const Text(
                      "Add Staff",
                      style: TextStyle(
                        color: secondaryColor,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const Spacer(),
                  if (!staffViewModel.lodingstafflist)
                    PaginationDropdown(
                      onChange: (value) {
                        stafffilter = stafffilter.copyWith(page: value);
                        setState(() {});
                        getData();
                      },
                      initialValue: stafffilter.page ?? 1,
                      pagecount: staffViewModel
                              .geStaffListRes?.body?.pagination?.totalPages ??
                          1,
                    )
                  else
                    Container(
                        width: 140,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 13,
                          vertical: 7,
                        ),
                        decoration: BoxDecoration(
                          color: Responsive.isMobile(context)
                              ? primaryColor
                              : kyellowbg,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const CupertinoActivityIndicator(color: kWhite)),
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
                      width: 140,
                      child: Text(
                        "Assigned Number",
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
                        "Role",
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
                        staffViewModel.geStaffListRes?.body?.organizationMembers
                                ?.length ??
                            0,
                        (index) => Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: StaffCard(
                            staffid: '101',
                            role: "Staff",
                            name: staffViewModel.geStaffListRes?.body
                                    ?.organizationMembers?[index].user?.name ??
                                " -- ",
                            profilePic: (staffViewModel
                                            .geStaffListRes
                                            ?.body
                                            ?.organizationMembers?[index]
                                            .user
                                            ?.profileImage ==
                                        null ||
                                    staffViewModel
                                            .geStaffListRes
                                            ?.body
                                            ?.organizationMembers?[index]
                                            .user
                                            ?.profileImage ==
                                        '')
                                ? damiProfile(
                                    stringTogender(staffViewModel
                                        .geStaffListRes
                                        ?.body
                                        ?.organizationMembers?[index]
                                        .user
                                        ?.gender),
                                    staffViewModel
                                            .geStaffListRes
                                            ?.body
                                            ?.organizationMembers?[index]
                                            .user
                                            ?.dateOfBirth ??
                                        "")
                                : staffViewModel
                                    .geStaffListRes!
                                    .body!
                                    .organizationMembers![index]
                                    .user!
                                    .profileImage!,
                            phone: remove91(staffViewModel
                                    .geStaffListRes
                                    ?.body
                                    ?.organizationMembers?[index]
                                    .user
                                    ?.phoneNumber) ??
                                " -- ",
                            age: calculateAge(staffViewModel
                                    .geStaffListRes
                                    ?.body
                                    ?.organizationMembers?[index]
                                    .user
                                    ?.dateOfBirth) ??
                                " -- ",
                            joinDate: staffViewModel
                                        .geStaffListRes
                                        ?.body
                                        ?.organizationMembers?[index]
                                        .joiningDate !=
                                    null
                                ? DateFormat('dd MMM yyyy').format(DateTime.parse(
                                    "${staffViewModel.geStaffListRes?.body?.organizationMembers?[index].joiningDate}"))
                                : " -- ",
                            totalMember: parseString(staffViewModel
                                .geStaffListRes
                                ?.body
                                ?.organizationMembers?[index]
                                .students
                                ?.length),
                            onPressed: () {
                              context.pushNamed(
                                AppRoute.staffDetails.name,
                                pathParameters: {
                                  'uid': staffViewModel
                                          .geStaffListRes
                                          ?.body
                                          ?.organizationMembers?[index]
                                          .user
                                          ?.id ??
                                      ""
                                },
                                extra: stafffilter,
                              );
                            },
                            onEdit: () {},
                            onRemove: () {
                              staffViewModel.deleteStaff(
                                  context,
                                  staffViewModel
                                          .geStaffListRes
                                          ?.body
                                          ?.organizationMembers?[index]
                                          .user
                                          ?.id ??
                                      "",
                                  stafffilter);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              gapH10,
            ],
          ),
        ),
      ),
    );
  }
}
