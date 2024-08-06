import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/organization/discount/widget/analysis_coupon_card.dart';
import 'package:omifit/view/organization/discount/widget/coupon_card.dart';
import 'package:omifit/view/organization/discount/widget/top_coupon_card.dart';
import 'package:omifit/view/organization/organization_view_model.dart';

class TabletDiscountView extends ConsumerStatefulWidget {
  const TabletDiscountView({super.key});

  @override
  ConsumerState<TabletDiscountView> createState() => _TabletDiscountViewState();
}

class _TabletDiscountViewState extends ConsumerState<TabletDiscountView> {
  @override
  Widget build(BuildContext context) {
    final OrganizationViewModel organizationViewModel =
        ref.watch(organizationViewModelProvider);
    return Scaffold(
        body: SingleChildScrollView(
      child: PaddedColumn(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          children: [
            gapH20,
            const AnalysisCouponCard(),
            gapH20,
            const TopCouponCard(),
            gapH20,
            Container(
              constraints: const BoxConstraints(minHeight: 800),
              decoration: const BoxDecoration(
                color: darkBlack,
                borderRadius: BorderRadius.all(Radius.circular(32)),
              ),
              child: PaddedColumn(
                crossAxisAlignment: CrossAxisAlignment.start,
                padding: const EdgeInsets.symmetric(horizontal: 25),
                children: [
                  gapH10,
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text("Coupons",
                        style: TextStyle(
                            color: kWhite,
                            fontSize: 18,
                            fontWeight: FontWeight.w600)),
                    trailing: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(20),
                          elevation: 0,
                          backgroundColor:
                              const Color.fromRGBO(194, 117, 39, 0.2),
                        ),
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.add_circled,
                            color: secondaryColor),
                        label: const Text(
                          "Create coupon",
                          style: TextStyle(
                              color: secondaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        )),
                  ),
                  const Divider(color: kGrey, thickness: 0.2),
                  gapH10,
                  AlignedGridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount:
                        MediaQuery.of(context).size.width > 700 ? 2 : 1,
                    mainAxisSpacing: 25,
                    crossAxisSpacing: 25,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return const CouponCard();
                    },
                  ),
                  gapH20,
                ],
              ),
            ),
          ]),
    ));
  }
}
