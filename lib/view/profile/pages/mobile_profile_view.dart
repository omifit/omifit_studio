import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/profile/widget/org_add.dart';
import 'package:omifit/view/profile/widget/org_card.dart';
import 'package:omifit/widget/imageicon/profile_img.dart';

class MobileProfileView extends StatefulWidget {
  const MobileProfileView({super.key});

  @override
  State<MobileProfileView> createState() => _MobileProfileViewState();
}

class _MobileProfileViewState extends State<MobileProfileView> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: lightBlack,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                SizedBox(
                  height: 215,
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
              crossAxisCount: 1,
              mainAxisSpacing: 25,
              crossAxisSpacing: 25,
              itemCount: 10,
              itemBuilder: (context, index) {
                return index == 0
                    ? OrgAddBtn(
                        onPressed: () {},
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
