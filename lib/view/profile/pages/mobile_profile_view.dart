import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:cupertino_modal_sheet/cupertino_modal_sheet.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:omifit/data/organization/model/selectorg_model.dart';
import 'package:omifit/utils/parse.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/organization/organization_view_model.dart';
import 'package:omifit/view/profile/dialog/add_org/add_org_dialog.dart';
import 'package:omifit/view/profile/dialog/edit_profile/editprofile_dialog.dart';
import 'package:omifit/view/profile/profile_view_model.dart';
import 'package:omifit/view/profile/widget/org_add.dart';
import 'package:omifit/view/profile/widget/org_card.dart';
import 'package:omifit/widget/imageicon/profile_img.dart';

class MobileProfileView extends ConsumerStatefulWidget {
  final bool isBack;
  const MobileProfileView({super.key, required this.isBack});

  @override
  ConsumerState<MobileProfileView> createState() => _MobileProfileViewState();
}

class _MobileProfileViewState extends ConsumerState<MobileProfileView> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(profileViewModelProvider).userDetails(context);
      ref.read(organizationViewModelProvider).orgListByUser(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ProfileViewModel profileViewModel =
        ref.watch(profileViewModelProvider);
    final OrganizationViewModel organizationViewModel =
        ref.watch(organizationViewModelProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: widget.isBack
            ? IconButton(
                onPressed: () {
                  HapticFeedback.lightImpact();
                  context.pop();
                },
                icon: const Icon(Icons.arrow_back_ios_new),
              )
            : null,
        actions: [
          BouncingWidget(
            onPressed: () {
              showCupertinoModalSheet(
                  context: context,
                  builder: (context) => const EditProfileDialog());
            },
            child: CircleAvatar(
              radius: 22,
              backgroundColor: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(3),
                child: ProfileImg(
                  url: (profileViewModel
                                  .userDetailsRes?.body?.user?.profileImage ==
                              null ||
                          profileViewModel
                                  .userDetailsRes?.body?.user?.profileImage ==
                              '')
                      ? damiProfile(
                          stringTogender(profileViewModel
                              .userDetailsRes?.body?.user?.gender),
                          profileViewModel
                                  .userDetailsRes?.body?.user?.dateOfBirth ??
                              "")
                      : profileViewModel
                          .userDetailsRes!.body!.user!.profileImage!,
                  height: double.infinity,
                  width: double.infinity,
                ),
              ),
            ),
          ),
          gapW20,
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (profileViewModel.lodinguserdetails ||
                organizationViewModel.lodingorglistbyuser)
              const LinearProgressIndicator(
                backgroundColor: kyellowbg,
                minHeight: 2,
                valueColor: AlwaysStoppedAnimation<Color>(secondaryColor),
              )
            else
              const SizedBox.shrink(),
            gapH20,
            AlignedGridView.count(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 1,
              mainAxisSpacing: 25,
              crossAxisSpacing: 25,
              itemCount: (organizationViewModel
                          .orglistbyuserRes?.body?.organizations?.length ??
                      0) +
                  1,
              itemBuilder: (context, index) {
                return index == 0
                    ? OrgAddBtn(
                        onPressed: () {
                          showCupertinoModalSheet(
                              context: context,
                              builder: (context) => const AddOrgDialog());
                        },
                      )
                    : OrgCard(
                        url: organizationViewModel
                                .orglistbyuserRes!
                                .body!
                                .organizations![index - 1]
                                .organization
                                ?.orgImage ??
                            "https://i.imgur.com/ocbA2RA.png",
                        tittle: organizationViewModel.orglistbyuserRes!.body!
                                .organizations![index - 1].organization?.name ??
                            "",
                        subTittle: organizationViewModel
                                .orglistbyuserRes!
                                .body!
                                .organizations![index - 1]
                                .organization
                                ?.address ??
                            "",
                        onPressed: () {
                          organizationViewModel.selectOrg(
                              SelectorgReq(
                                  organizationId: organizationViewModel
                                      .orglistbyuserRes!
                                      .body!
                                      .organizations![index - 1]
                                      .organization!
                                      .id),
                              context);

                          // showCupertinoModalSheet(
                          //     context: context,
                          //     builder: (context) => const AddOrgDialog());
                        },
                        role: (organizationViewModel.orglistbyuserRes!.body!
                                    .organizations![index - 1].role ??
                                "")
                            .toUpperCase(),
                      );
              },
            ),
            gapH20,
          ],
        ),
      ),
    );
  }
}
