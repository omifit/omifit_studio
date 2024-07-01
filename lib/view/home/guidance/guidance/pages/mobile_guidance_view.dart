import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/home/guidance/guidance/widget/guidance_add.dart';
import 'package:omifit/view/home/guidance/guidance/widget/guidance_card.dart';
import 'package:omifit/view/home/home_view_model.dart';

class MobileGuidanceView extends ConsumerStatefulWidget {
  const MobileGuidanceView({super.key});

  @override
  ConsumerState<MobileGuidanceView> createState() => _MobileGuidanceViewState();
}

class _MobileGuidanceViewState extends ConsumerState<MobileGuidanceView> {
  @override
  Widget build(BuildContext context) {
    final HomeViewModel homeViewModel = ref.watch(homeViewModelProvider);
    return Scaffold(
        body: SingleChildScrollView(
      child: PaddedColumn(
        padding: const EdgeInsets.symmetric(vertical: 16),
        children: [
          AlignedGridView.count(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 1,
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
}
