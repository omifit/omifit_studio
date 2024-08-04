import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:omifit/core/core.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/profile/dialog/add_org_dialog.dart';
import 'package:omifit/view/profile/profile_view_model.dart';
import 'package:omifit/view/profile/widget/org_add.dart';
import 'package:omifit/view/profile/widget/org_card.dart';
import 'package:omifit/widget/imageicon/profile_img.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class MobileProfileView extends ConsumerStatefulWidget {
  final bool isBack;
  const MobileProfileView({super.key, required this.isBack});

  @override
  ConsumerState<MobileProfileView> createState() => _MobileProfileViewState();
}

class _MobileProfileViewState extends ConsumerState<MobileProfileView> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 300), () {
      ref.read(profileViewModelProvider).userDetails(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ProfileViewModel profileViewModel =
        ref.watch(profileViewModelProvider);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: widget.isBack
          ? FloatingActionButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              mini: true,
              elevation: 0,
              hoverElevation: 0,
              focusElevation: 0,
              highlightElevation: 0,
              onPressed: () {
                HapticFeedback.lightImpact();
                context.pop();
              },
              child: const Icon(Icons.arrow_back_ios_new, color: kWhite),
            )
          : null,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                SizedBox(
                  height: 200,
                  child: Image.asset(
                    'assets/images/bg.png',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).padding.top,
                  right: 16,
                  child: BouncingWidget(
                    onPressed: () {
                      context.pushNamed(AppRoute.editProfile.name);
                    },
                    child: CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(3),
                        child: ProfileImg(
                          url: profileViewModel
                                  .userDetailsRes?.body?.user?.profileImage ??
                              AppConstants.noProfileImg,
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
              crossAxisCount: 1,
              mainAxisSpacing: 25,
              crossAxisSpacing: 25,
              itemCount: 10,
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
                        url: "https://i.imgur.com/ocbA2RA.png",
                        tittle: "Omifit Gym",
                        subTittle: "Gymnasium",
                        onPressed: () {
                          context.goNamed(AppRoute.home.name);
                        },
                        role: "Admin",
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
