import 'package:cupertino_modal_sheet/cupertino_modal_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/organization/discount/dialog/create_coupon_dialog.dart';
import 'package:omifit/view/organization/discount/widget/analysis_coupon_card.dart';
import 'package:omifit/view/organization/discount/widget/coupon_card.dart';
import 'package:omifit/view/organization/discount/widget/top_coupon_card.dart';

class DesktopDiscountView extends StatefulWidget {
  const DesktopDiscountView({super.key});

  @override
  State<DesktopDiscountView> createState() => _DesktopDiscountViewState();
}

class _DesktopDiscountViewState extends State<DesktopDiscountView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: PaddedRow(
          crossAxisAlignment: CrossAxisAlignment.start,
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          children: [
            Expanded(
              child: Container(
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
                    Row(
                      children: [
                        const Text("Coupons",
                            style: TextStyle(
                                color: kWhite,
                                fontSize: 18,
                                fontWeight: FontWeight.w600)),
                        gapW15,
                        ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(15),
                              elevation: 0,
                              backgroundColor:
                                  const Color.fromRGBO(194, 117, 39, 0.2),
                            ),
                            onPressed: () {
                              showCupertinoModalSheet(
                                  context: context,
                                  builder: (context) {
                                    return const CreateCouponDialog();
                                  });
                            },
                            icon: const Icon(CupertinoIcons.add_circled,
                                color: secondaryColor),
                            label: const Text(
                              "Create coupon",
                              style: TextStyle(
                                  color: secondaryColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            )),
                      ],
                    ),
                    gapH10,
                    const Divider(color: kGrey, thickness: 0.2),
                    gapH10,
                    AlignedGridView.count(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: MediaQuery.of(context).size.width > 1500
                          ? 3
                          : MediaQuery.of(context).size.width > 1130
                              ? 2
                              : 1,
                      mainAxisSpacing: 25,
                      crossAxisSpacing: 25,
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return InkWell(
                            onTap: () {
                              showCupertinoModalSheet(
                                  context: context,
                                  builder: (context) {
                                    return const CreateCouponDialog();
                                  });
                            },
                            child: const CouponCard());
                      },
                    ),
                    gapH20,
                  ],
                ),
              ),
            ),
            gapW20,
            SizedBox(
              width: 450,
              child: Column(
                children: [
                  const AnalysisCouponCard(),
                  gapH20,
                  const TopCouponCard(),
                ],
              ),
            ),
          ]),
    ));
  }
}
