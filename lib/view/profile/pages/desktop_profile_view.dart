import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/auth/auth_view_model.dart';
import 'package:omifit/view/profile/dialog/add_org_dialog.dart';
import 'package:omifit/view/profile/dialog/editprofile_dialog.dart';
import 'package:omifit/view/profile/profile_view_model.dart';
import 'package:omifit/view/profile/widget/org_add.dart';
import 'package:omifit/view/profile/widget/org_card.dart';
import 'package:omifit/widget/imageicon/profile_img.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class DesktopProfileView extends ConsumerStatefulWidget {
  final bool isBack;
  const DesktopProfileView({super.key, required this.isBack});

  @override
  ConsumerState<DesktopProfileView> createState() => _DesktopProfileViewState();
}

class _DesktopProfileViewState extends ConsumerState<DesktopProfileView> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 400), () {
      ref.read(profileViewModelProvider).userDetails(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final ProfileViewModel profileViewModel =
        ref.watch(profileViewModelProvider);
    final AuthViewModel authViewModel = ref.watch(authViewModelProvider);
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
                    onPressed: () {
                      WoltModalSheet.show(
                          context: context,
                          barrierDismissible: false,
                          minDialogWidth: 750,
                          maxDialogWidth: 1000,
                          pageIndexNotifier: profileViewModel.pageIndexNotifier,
                          pageListBuilder: (BuildContext context) {
                            return [
                              ProfileDetailDialog.build(context),
                              UpdatePhoneDialog.build(context, ref),
                            ];
                          });
                    },
                    child: CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(3),
                        child: ProfileImg(
                          url: profileViewModel
                                  .userDetailsRes?.body?.user?.profileImage ??
                              "https://i.imgur.com/UnWWlu3.png",
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
              crossAxisCount: gridCount(width),
              mainAxisSpacing: 25,
              crossAxisSpacing: 25,
              itemCount: 4,
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

  int gridCount(double width) {
    if (width > 1400) {
      return 4;
    } else if (width > 1000) {
      return 3;
    } else {
      return 2;
    }
  }
}
