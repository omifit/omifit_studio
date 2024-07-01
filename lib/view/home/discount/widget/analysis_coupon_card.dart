import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:omifit/utils/utils.dart';

class AnalysisCouponCard extends StatelessWidget {
  const AnalysisCouponCard({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: darkBlack,
        borderRadius: BorderRadius.all(Radius.circular(32)),
      ),
      child: PaddedColumn(
        crossAxisAlignment: CrossAxisAlignment.start,
        padding: const EdgeInsets.symmetric(horizontal: 25),
        children: [
          gapH10,
          const ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text("Analysis",
                style: TextStyle(
                    color: kWhite, fontSize: 16, fontWeight: FontWeight.w700)),
          ),
          const Divider(color: kGrey, thickness: 0.2),
          gapH10,
          AlignedGridView.count(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: MediaQuery.of(context).size.width > 400 ? 2 : 1,
            mainAxisSpacing: ResponsiveDiscount.isMobile(context) ? 10 : 25,
            crossAxisSpacing: 25,
            itemCount: 4,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.symmetric(
                  horizontal: ResponsiveDiscount.isMobile(context) ? 10 : 20,
                  vertical: ResponsiveDiscount.isMobile(context) ? 5 : 10,
                ),
                decoration: BoxDecoration(
                  color: index == 0
                      ? kyellowbg
                      : index == 1
                          ? kBluebg
                          : index == 2
                              ? kGreenbg
                              : index == 3
                                  ? kRedbg
                                  : kWhite,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListTile(
                  title: Text(
                    "30",
                    style: TextStyle(
                      color: index == 0
                          ? kyellow
                          : index == 1
                              ? kBlue
                              : index == 2
                                  ? kGreen
                                  : index == 3
                                      ? kRed
                                      : kWhite,
                      fontSize:
                          ResponsiveDashboard.isMobile(context) ? 24.sp : 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  subtitle: Text(
                    "Daily Members",
                    style: TextStyle(
                      color: index == 0
                          ? kyellow
                          : index == 1
                              ? kBlue
                              : index == 2
                                  ? kGreen
                                  : index == 3
                                      ? kRed
                                      : kWhite,
                      fontSize:
                          ResponsiveDashboard.isMobile(context) ? 12.sp : 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              );
            },
          ),
          gapH20,
        ],
      ),
    );
  }
}
