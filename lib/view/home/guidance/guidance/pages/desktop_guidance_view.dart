import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/home/guidance/guidance/widget/guidance_add.dart';
import 'package:omifit/view/home/guidance/guidance/widget/guidance_card.dart';

class DesktopGuidanceView extends StatefulWidget {
  const DesktopGuidanceView({super.key});

  @override
  State<DesktopGuidanceView> createState() => _DesktopGuidanceViewState();
}

class _DesktopGuidanceViewState extends State<DesktopGuidanceView> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: PaddedColumn(
        padding: const EdgeInsets.symmetric(vertical: 16),
        children: [
          AlignedGridView.count(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: gridCount(width),
            mainAxisSpacing: 25,
            crossAxisSpacing: 25,
            itemCount: 8,
            itemBuilder: (context, index) {
              return index == 0
                  ? GuidanceAddBtn(onPressed: () {})
                  : GuidanceCard(
                      url: "https://i.imgur.com/MknSctK.png",
                      tittle: "Bench press",
                      subTittle: "Gymnasium",
                      onPressed: () {
                        context.pushNamed(AppRoute.guidanceDetails.name);
                      },
                      role: "Admin",
                    );
            },
          ),
        ],
      ),
    ));
  }

  int gridCount(double width) {
    if (width > 1400) {
      return 6;
    } else if (width > 1200) {
      return 5;
    } else if (width > 1000) {
      return 4;
    } else {
      return 3;
    }
  }
}
