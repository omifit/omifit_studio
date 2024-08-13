import 'package:flutter/cupertino.dart';
import 'package:iconly/iconly.dart';
import 'package:lottie/lottie.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/organization/member/member_view_model.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

//! Payment member dialog
class PaymentView extends ConsumerWidget {
  const PaymentView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: SizedBox(
          width: double.infinity,
          height: 52,
          child: FilledBtn(
            text: "Continue",
            onPressed: () {
              // if (_formkey.currentState!.validate()) {

              // }
            },
          ),
        ),
      ),
      backgroundColor: darkBlack,
      appBar: AppBar(
        backgroundColor: darkBlack,
        title: Text("Payment",
            style: TextStyle(
                color: kWhite,
                fontSize: ResponsiveMember.isMobile(context) ? 18 : 20,
                fontWeight: FontWeight.w600)),
        leading: IconButton(
          icon: const Icon(CupertinoIcons.back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
          child: PaddedColumn(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          gapH22,
          ...List.generate(
              2,
              (index) => Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: DecoratedBox(
                      decoration: const BoxDecoration(
                        color: lightBlack,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        border: Border(
                          left: BorderSide(
                            color: kRed,
                            width: 2,
                          ),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 46, 46, 46),
                            spreadRadius: 2,
                            blurRadius: 40,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const ListTile(
                            titleAlignment: ListTileTitleAlignment.bottom,
                            title: Text("Gold Plan for 3 months",
                                style: TextStyle(
                                    color: kWhite,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                            trailing: Text("\$ 90",
                                style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600)),
                          ),
                          Wrap(
                            crossAxisAlignment: WrapCrossAlignment.start,
                            children: [
                              TextButton.icon(
                                  label: const Text(
                                      "Activation Date - 2 jan 2024",
                                      style: TextStyle(
                                          color: kGrey,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500)),
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.mode_edit,
                                    color: primaryColor,
                                    size: 14,
                                  )),
                              TextButton.icon(
                                  label: const Text("Expire Date - 2 jan 2024",
                                      style: TextStyle(
                                          color: kGrey,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500)),
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.mode_edit,
                                    color: primaryColor,
                                    size: 14,
                                  )),
                            ],
                          ),
                          gapH10
                        ],
                      ),
                    ),
                  )),
          gapW20,
          const Divider(
            color: kGrey,
            thickness: 0.1,
          ),
          gapW20,
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                gapH12,
                DecoratedBox(
                  decoration: BoxDecoration(
                    color: lightBlack.withOpacity(0.4),
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: darkBlack.withOpacity(0.9),
                    //     spreadRadius: 2,
                    //     blurRadius: 90,
                    //     offset: const Offset(0, 3),
                    //   ),
                    // ],
                  ),
                  child: PaddedColumn(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    children: [
                      ListTile(
                        dense: true,
                        visualDensity: VisualDensity.compact,
                        contentPadding: EdgeInsets.zero,
                        leading: Icon(
                          Icons.card_membership_rounded,
                          color: kWhite.withOpacity(0.5),
                          size: 19,
                        ),
                        title: const Text(
                          "Iteam Total",
                          style: TextStyle(
                            color: kWhite,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        trailing: const Text(
                          "\$90",
                          style: TextStyle(
                            color: kWhite,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      ListTile(
                        dense: true,
                        visualDensity: VisualDensity.compact,
                        contentPadding: EdgeInsets.zero,
                        leading: Icon(
                          Icons.account_balance_rounded,
                          color: kWhite.withOpacity(0.5),
                          size: 19,
                        ),
                        title: const Text(
                          "GST and orgaization fee",
                          style: TextStyle(
                            color: kWhite,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        trailing: const Text(
                          "\$90",
                          style: TextStyle(
                            color: kWhite,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      ListTile(
                        dense: true,
                        visualDensity: VisualDensity.compact,
                        contentPadding: EdgeInsets.zero,
                        leading: Icon(
                          Icons.phone_iphone,
                          color: kWhite.withOpacity(0.5),
                          size: 19,
                        ),
                        title: const Text(
                          "Platform Fee",
                          style: TextStyle(
                            color: kWhite,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        trailing: const Text(
                          "FREE",
                          style: TextStyle(
                            color: kBlue,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      ListTile(
                        dense: true,
                        visualDensity: VisualDensity.compact,
                        contentPadding: EdgeInsets.zero,
                        leading: Icon(
                          IconlyLight.discount,
                          color: kWhite.withOpacity(0.5),
                          size: 19,
                        ),
                        title: const Text(
                          "Coupon Discount",
                          style: TextStyle(
                            color: kWhite,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        trailing: const Text(
                          "\$ 90",
                          style: TextStyle(
                            color: kWhite,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),

                      // DecoratedBox(
                      //   decoration: BoxDecoration(
                      //     color: darkBlack,
                      //     borderRadius: BorderRadius.circular(12),
                      //     border: Border.all(
                      //       color: kRed,
                      //       width: 0.3,
                      //     ),
                      //   ),
                      //   child: const ListTile(
                      //     dense: true,
                      //     titleAlignment: ListTileTitleAlignment.center,
                      //     // visualDensity: VisualDensity.compact,
                      //     contentPadding: EdgeInsets.only(
                      //       left: 10,
                      //     ),
                      //     leading: Icon(
                      //       IconlyLight.discount,
                      //       color: kWhite,
                      //     ),
                      //     title: Text(
                      //       "Coupon Discount",
                      //       style: TextStyle(
                      //         color: kWhite,
                      //         fontSize: 16,
                      //         fontWeight: FontWeight.w400,
                      //       ),
                      //     ),
                      //     subtitle: Text(
                      //       "Remove",
                      //       style: TextStyle(
                      //         color: kRed,
                      //         fontSize: 14,
                      //         fontWeight: FontWeight.w400,
                      //       ),
                      //     ),
                      //     trailing: Row(
                      //       mainAxisSize: MainAxisSize.min,
                      //       children: [
                      //         Text(
                      //           "\$ 90",
                      //           style: TextStyle(
                      //             color: kWhite,
                      //             fontSize: 16,
                      //             fontWeight: FontWeight.w400,
                      //           ),
                      //         ),
                      //         SizedBox(
                      //           width: 10,
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),
                      // gapH10,
                      const Divider(
                        color: kGrey,
                        thickness: 0.5,
                      ),
                      ListTile(
                        dense: true,
                        visualDensity: VisualDensity.compact,
                        contentPadding: EdgeInsets.zero,
                        leading: Icon(
                          Icons.money,
                          color: kWhite.withOpacity(0.5),
                          size: 19,
                        ),
                        title: const Text(
                          "Grand Total",
                          style: TextStyle(
                            color: kWhite,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        trailing: const Text(
                          "\$ 90",
                          style: TextStyle(
                            color: kWhite,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                gapH20,
                DecoratedBox(
                    decoration: BoxDecoration(
                      color: lightBlack.withOpacity(0.4),
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: darkBlack.withOpacity(0.9),
                      //     spreadRadius: 2,
                      //     blurRadius: 90,
                      //     offset: const Offset(0, 3),
                      //   ),
                      // ],
                    ),
                    child: PaddedColumn(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 8),
                        children: [
                          CupertinoTextFormFieldRow(
                            padding: EdgeInsets.zero,
                            keyboardType: TextInputType.number,
                            prefix: const SizedBox(
                                width: 80,
                                child: Text(
                                  'Pay',
                                  style: TextStyle(fontSize: 16),
                                )),
                            placeholder: 'Enter Amount',
                            style: const TextStyle(color: kWhite),
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a value';
                              }
                              return null;
                            },
                          ),
                          const Divider(
                            color: kWhite,
                            thickness: 0.1,
                          ),
                          CupertinoTextFormFieldRow(
                            padding: EdgeInsets.zero,
                            keyboardType: TextInputType.number,
                            prefix: const SizedBox(
                                width: 80,
                                child: Text('Due',
                                    style: TextStyle(fontSize: 16))),
                            placeholder: 'Enter Amount',
                            style: const TextStyle(color: kWhite),
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a value';
                              }
                              return null;
                            },
                          ),
                          const Divider(
                            color: kWhite,
                            thickness: 0.1,
                          ),
                          CupertinoTextFormFieldRow(
                            padding: EdgeInsets.zero,
                            prefix: const SizedBox(
                                width: 80,
                                child: Text('Remark',
                                    style: TextStyle(fontSize: 16))),
                            placeholder: ' Enter Remark',
                            style: const TextStyle(color: kWhite),
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a value';
                              }
                              return null;
                            },
                          ),
                        ])),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

//! Success member dialog
class SuccessMemberDialog {
  static WoltModalSheetPage build(BuildContext context, WidgetRef ref) {
    return WoltModalSheetPage(
      backgroundColor: darkBlack,
      surfaceTintColor: darkBlack,
      hasSabGradient: false,
      isTopBarLayerAlwaysVisible: true,
      topBar: const PaddedRow(
        padding: EdgeInsets.symmetric(horizontal: 25),
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [],
      ),
      trailingNavBarWidget: Padding(
        padding: const EdgeInsets.only(right: 22),
        child: IconButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(kyellowbg),
          ),
          onPressed: () {
            Navigator.of(context).pop();
            ref.read(memberViewModelProvider).addMemberDialogPage.value = 0;
          },
          icon: const Icon(Icons.close, color: primaryColor),
        ),
      ),
      child: StatefulBuilder(
        builder: (BuildContext context, setState) {
          return const SuccessMemberWidget();
        },
      ),
    );
  }
}

class SuccessMemberWidget extends StatelessWidget {
  const SuccessMemberWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PaddedColumn(
      padding: EdgeInsets.symmetric(
          horizontal: ResponsiveMember.isMobile(context) ? 16 : 22),
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        LottieBuilder.asset("assets/animations/profile_suc.json",
            height: 250, fit: BoxFit.fill, repeat: false),
        gapH20,
        Text(
          "Member Added Successfully",
          style: TextStyle(
            color: kWhite,
            fontSize: ResponsiveMember.isMobile(context) ? 18 : 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        gapH20,
      ],
    );
  }
}
