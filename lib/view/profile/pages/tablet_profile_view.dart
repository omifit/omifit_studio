import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/profile/dialog/add_org_dialog.dart';
import 'package:omifit/view/profile/dialog/editprofile_dialog.dart';
import 'package:omifit/view/profile/profile_view_model.dart';
import 'package:omifit/view/profile/widget/org_add.dart';
import 'package:omifit/view/profile/widget/org_card.dart';
import 'package:omifit/widget/imageicon/profile_img.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class TabletProfileView extends ConsumerStatefulWidget {
  const TabletProfileView({super.key});

  @override
  ConsumerState<TabletProfileView> createState() => _TabletProfileViewState();
}

class _TabletProfileViewState extends ConsumerState<TabletProfileView> {
  @override
  Widget build(BuildContext context) {
    final ProfileViewModel profileViewModel =
        ref.watch(profileViewModelProvider);
    return Scaffold(
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
                        onPressed: () {},
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
