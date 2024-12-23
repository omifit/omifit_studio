import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:cupertino_modal_sheet/cupertino_modal_sheet.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:omifit_studio/utils/parse.dart';
import 'package:omifit_studio/utils/utils.dart';
import 'package:omifit_studio/view/organization/organization_view_model.dart';
import 'package:omifit_studio/view/profile/dialog/add_org/add_org_dialog.dart';
import 'package:omifit_studio/view/profile/dialog/edit_profile/editprofile_dialog.dart';
import 'package:omifit_studio/view/profile/profile_view_model.dart';
import 'package:omifit_studio/view/profile/widget/org_add.dart';
import 'package:omifit_studio/view/profile/widget/org_card.dart';
import 'package:omifit_studio/widget/imageicon/profile_img.dart';

class SettingsDialog extends ConsumerStatefulWidget {
  const SettingsDialog({super.key});

  @override
  ConsumerState<SettingsDialog> createState() => _SettingsDialogState();
}

class _SettingsDialogState extends ConsumerState<SettingsDialog> {
  @override
  Widget build(BuildContext context) {
    final ProfileViewModel profileViewModel =
        ref.watch(profileViewModelProvider);
    final OrganizationViewModel organizationViewModel =
        ref.watch(organizationViewModelProvider);
    return Scaffold(
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
            Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  constraints: const BoxConstraints(
                    maxHeight: 500,
                  ),
                  child: Image.asset(
                    'assets/images/bg.png',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 16,
                  right: 16,
                  child: BouncingWidget(
                    scaleFactor: 1,
                    duration: const Duration(milliseconds: 200),
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
                          url: (profileViewModel.userDetailsRes?.body?.user
                                          ?.profileImage ==
                                      null ||
                                  profileViewModel.userDetailsRes?.body?.user
                                          ?.profileImage ==
                                      '')
                              ? damiProfile(
                                  stringTogender(profileViewModel
                                      .userDetailsRes?.body?.user?.gender),
                                  profileViewModel.userDetailsRes?.body?.user
                                          ?.dateOfBirth ??
                                      "")
                              : profileViewModel
                                  .userDetailsRes!.body!.user!.profileImage!,
                          height: double.infinity,
                          width: double.infinity,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 16,
                    left: 16,
                    child: IconButton(
                        onPressed: () {
                          context.pop();
                        },
                        icon: const Icon(Icons.arrow_back_ios_new))),
              ],
            ),
            gapH30,
            AlignedGridView.count(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: Responsive.isMobile(context) ? 1 : 2,
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
                          context.pushNamed(AppRoute.organizationDetails.name);
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
