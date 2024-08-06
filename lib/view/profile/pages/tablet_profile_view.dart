import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/organization/organization_view_model.dart';
import 'package:omifit/view/profile/others/add_org/add_org_dialog.dart';
import 'package:omifit/view/profile/profile_view_model.dart';
import 'package:omifit/view/profile/widget/org_add.dart';
import 'package:omifit/view/profile/widget/org_card.dart';
import 'package:omifit/widget/imageicon/profile_img.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class TabletProfileView extends ConsumerStatefulWidget {
  final bool isBack;
  const TabletProfileView({super.key, required this.isBack});

  @override
  ConsumerState<TabletProfileView> createState() => _TabletProfileViewState();
}

class _TabletProfileViewState extends ConsumerState<TabletProfileView> {
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
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: widget.isBack
          ? FloatingActionButton(
              hoverColor: Colors.transparent,
              focusColor: Colors.transparent,
              foregroundColor: Colors.transparent,
              splashColor: Colors.transparent,
              elevation: 0,
              hoverElevation: 0,
              focusElevation: 0,
              highlightElevation: 0,
              onPressed: () {
                context.pop();
              },
              backgroundColor: Colors.transparent,
              child: const Icon(Icons.arrow_back_ios, color: kWhite),
            )
          : null,
      backgroundColor: lightBlack,
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (profileViewModel.lodinguserdetails ||
                organizationViewModel.lodingorglistbyuser)
              const LinearProgressIndicator(
                backgroundColor: kyellowbg,
                minHeight: 5,
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
                    onPressed: () {},
                    child: const CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.all(3),
                        child: ProfileImg(
                          url: "https://i.imgur.com/UnWWlu3.png",
                          height: double.infinity,
                          width: double.infinity,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            gapH30,
            AlignedGridView.count(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
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
                          WoltModalSheet.show(
                              context: context,
                              barrierDismissible: false,
                              pageListBuilder: (BuildContext context) {
                                return [
                                  AddOrgDialog.build(context),
                                ];
                              });
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
                          context.goNamed(AppRoute.home.name);
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
