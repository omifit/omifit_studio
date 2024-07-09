import 'package:country_code_picker/country_code_picker.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:iconly/iconly.dart';
import 'package:lottie/lottie.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/home/member/member_view_model.dart';
import 'package:omifit/widget/imageicon/profile_img.dart';
import 'package:omifit/widget/picker/profession_dropdown.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

//! Add member dialog
class AddMemberDialog {
  static WoltModalSheetPage build(BuildContext context) {
    return WoltModalSheetPage(
      backgroundColor: darkBlack,
      surfaceTintColor: darkBlack,
      hasSabGradient: false,
      isTopBarLayerAlwaysVisible: true,
      topBar: PaddedRow(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              gapW10,
              Text(
                "Add Member",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: ResponsiveDashboard.isMobile(context) ? 16 : 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
      trailingNavBarWidget: Padding(
        padding: const EdgeInsets.only(right: 22),
        child: IconButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(kyellowbg),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.close, color: primaryColor),
        ),
      ),
      child: StatefulBuilder(
        builder: (BuildContext context, setState) {
          return const AddMemberWidget();
        },
      ),
    );
  }
}

class AddMemberWidget extends ConsumerWidget {
  const AddMemberWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final MemberViewModel memberViewModel = ref.watch(memberViewModelProvider);
    return ResponsiveMember.isDesktop(context)
        ? PaddedColumn(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              gapH10,
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Align(
                      child: InkWell(
                        overlayColor:
                            WidgetStateProperty.all(Colors.transparent),
                        onTap: () {},
                        child: const Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 90,
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
                            CircleAvatar(
                              backgroundColor: kWhite,
                              radius: 16,
                              child: CircleAvatar(
                                backgroundColor: secondaryColor,
                                radius: 14,
                                child: Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  gapW40,
                  Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          gapH25,
                          TextField(
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(10),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            cursorColor: primaryColor,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              prefixIcon: CountryCodePicker(
                                enabled: false,
                                onChanged: (contryCode) {},
                                dialogBackgroundColor: darkBlack,
                                initialSelection: 'IN',
                                favorite: const ['+92', 'IN'],
                                textStyle: const TextStyle(
                                  color: kWhite,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              hintText: 'Enter Your Phone Number',
                              hintStyle: const TextStyle(
                                color: kGrey,
                                fontWeight: FontWeight.w600,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          gapH25,
                          TextField(
                            cursorColor: primaryColor,
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              hintText: 'Enter Your Name',
                              hintStyle: const TextStyle(
                                color: kGrey,
                                fontWeight: FontWeight.w600,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          gapH25,
                          Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  readOnly: true,
                                  onTap: () {
                                    showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(1900),
                                      lastDate: DateTime.now(),
                                      onDatePickerModeChange: (value) =>
                                          print(value),
                                    ).then((value) {});
                                  },
                                  cursorColor: primaryColor,
                                  keyboardType: TextInputType.name,
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    hintText: 'Enter Your Date of Birth',
                                    hintStyle: const TextStyle(
                                      color: kGrey,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    suffixIcon: const Icon(
                                      IconlyBold.calendar,
                                      color: kGrey,
                                    ),
                                  ),
                                ),
                              ),
                              gapW10,
                              Expanded(
                                  child: ProfessionDropdown(
                                      onChange: (value) {},
                                      initialValue: "Strudent")),
                            ],
                          ),
                          gapH25,
                          CustomSlidingSegmentedControl<int>(
                            isStretch: true,
                            initialValue: 1,
                            height: 45,
                            children: const {
                              1: Text('Male'),
                              2: Text('Female'),
                              3: Text('Others'),
                            },
                            decoration: BoxDecoration(
                              color: const Color(0xFF3F3E43),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            thumbDecoration: BoxDecoration(
                              color: const Color.fromARGB(255, 44, 44, 44),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInToLinear,
                            onValueChanged: (v) {},
                          ),
                          gapH25,
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: FilledBtn(
                              text: "Continue",
                              onPressed: () {
                                memberViewModel.addMemberDialogPage.value = 1;
                              },
                            ),
                          ),
                        ],
                      )),
                ],
              ),
              gapH40,
            ],
          )
        : PaddedColumn(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                gapH20,
                Align(
                  child: InkWell(
                    overlayColor: WidgetStateProperty.all(Colors.transparent),
                    onTap: () {},
                    child: const Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                          radius: 50,
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
                        CircleAvatar(
                          backgroundColor: kWhite,
                          radius: 12,
                          child: CircleAvatar(
                            backgroundColor: secondaryColor,
                            radius: 10,
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                gapH16,
                TextField(
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(10),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  cursorColor: primaryColor,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    prefixIcon: CountryCodePicker(
                      enabled: false,
                      onChanged: (contryCode) {},
                      dialogBackgroundColor: darkBlack,
                      initialSelection: 'IN',
                      favorite: const ['+92', 'IN'],
                      textStyle: const TextStyle(
                        color: kWhite,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    hintText: 'Enter Your Phone Number',
                    hintStyle: const TextStyle(
                      color: kGrey,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                gapH16,
                TextField(
                  cursorColor: primaryColor,
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: 'Enter Your Name',
                    hintStyle: const TextStyle(
                      color: kGrey,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                gapH16,
                TextField(
                  readOnly: true,
                  onTap: () {
                    showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now(),
                      onDatePickerModeChange: (value) => print(value),
                    ).then((value) {});
                  },
                  cursorColor: primaryColor,
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: 'Enter Your Date of Birth',
                    hintStyle: const TextStyle(
                      color: kGrey,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: const Icon(
                      IconlyBold.calendar,
                      color: kGrey,
                    ),
                  ),
                ),
                gapH16,
                ProfessionDropdown(
                    onChange: (value) {}, initialValue: "Strudent"),
                gapH16,
                CustomSlidingSegmentedControl<int>(
                  isStretch: true,
                  initialValue: 1,
                  height: 45,
                  children: const {
                    1: Text('Male'),
                    2: Text('Female'),
                    3: Text('Others'),
                  },
                  decoration: BoxDecoration(
                    color: const Color(0xFF3F3E43),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  thumbDecoration: BoxDecoration(
                    color: const Color.fromARGB(255, 44, 44, 44),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInToLinear,
                  onValueChanged: (v) {},
                ),
                gapH20,
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: FilledBtn(
                    text: "Continue",
                    onPressed: () {
                      memberViewModel.addMemberDialogPage.value = 1;
                    },
                  ),
                ),
                gapH25,
              ]);
  }
}

//! Plan member dialog
class PlanAddMemberDialog {
  static WoltModalSheetPage build(BuildContext context, WidgetRef ref) {
    return WoltModalSheetPage(
      stickyActionBar: Container(
        width: double.infinity,
        color: darkBlack,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: SizedBox(
            height: 50,
            child: FilledBtn(
              text: "Continue",
              onPressed: () {
                ref.read(memberViewModelProvider).addMemberDialogPage.value = 2;
              },
            ),
          ),
        ),
      ),
      backgroundColor: darkBlack,
      surfaceTintColor: darkBlack,
      hasSabGradient: false,
      isTopBarLayerAlwaysVisible: true,
      topBar: PaddedRow(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    ref
                        .read(memberViewModelProvider)
                        .addMemberDialogPage
                        .value = 0;
                  },
                  icon: const Icon(CupertinoIcons.back)),
              gapW10,
              Text(
                "Pick a Plan",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: ResponsiveDashboard.isMobile(context) ? 16 : 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
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
          return const PlanAddMemberWidget();
        },
      ),
    );
  }
}

class PlanAddMemberWidget extends StatelessWidget {
  const PlanAddMemberWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PaddedColumn(
      padding: EdgeInsets.symmetric(
          horizontal: ResponsiveMember.isMobile(context) ? 16 : 22),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        gapH30,
        AlignedGridView.count(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: ResponsiveMember.isTablet(context) ||
                  ResponsiveMember.isMobile(context)
              ? 1
              : 2,
          mainAxisSpacing: 25,
          crossAxisSpacing: 25,
          itemCount: 7,
          itemBuilder: (context, index) {
            return Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: lightBlack,
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  border: Border.fromBorderSide(BorderSide(
                      width: 2,
                      color: index == 0 ? primaryColor : Colors.transparent)),
                  boxShadow: [
                    BoxShadow(
                      color: darkBlack.withOpacity(0.4),
                      spreadRadius: 2,
                      blurRadius: 20,
                      offset: const Offset(0, 3),
                    ),
                  ]),
              child: PaddedColumn(
                crossAxisAlignment: CrossAxisAlignment.start,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    visualDensity: VisualDensity.compact,
                    titleAlignment: ListTileTitleAlignment.top,
                    title: Text("Gold Plan for 3 months",
                        style: TextStyle(
                            color: primaryColor,
                            fontSize:
                                ResponsiveMember.isMobile(context) ? 16 : 18,
                            fontWeight: FontWeight.w600)),
                    trailing: Radio(
                      value: index,
                      groupValue: 0,
                      onChanged: (value) {},
                      activeColor: secondaryColor,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("₹ 90",
                          style: TextStyle(
                              color: kWhite,
                              fontSize:
                                  ResponsiveMember.isMobile(context) ? 22 : 26,
                              fontWeight: FontWeight.w600)),
                      gapW10,
                      Text("200",
                          style: TextStyle(
                              color: kGrey,
                              fontSize:
                                  ResponsiveMember.isMobile(context) ? 14 : 16,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.lineThrough,
                              decorationColor: darkBlack,
                              decorationThickness: 4)),
                    ],
                  ),
                  gapH8,
                  Text(
                      "We advertise on social media to drive local clients onto Cosmetropolis and directly to your profile",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 217, 215, 215),
                          fontSize:
                              ResponsiveMember.isMobile(context) ? 12 : 14,
                          fontWeight: FontWeight.w200)),
                  gapH5,
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: const Icon(
                      CupertinoIcons.checkmark_seal,
                      color: kGreen,
                      size: 20,
                    ),
                    title: Text("Duration - 6 months",
                        style: TextStyle(
                            color: kWhite,
                            fontSize:
                                ResponsiveMember.isMobile(context) ? 14 : 15,
                            fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
            );
          },
        ),
        gapH100,
      ],
    );
  }
}

//! Payment member dialog
class PaymentAddMemberDialog {
  static WoltModalSheetPage build(BuildContext context, WidgetRef ref) {
    return WoltModalSheetPage(
      backgroundColor: darkBlack,
      surfaceTintColor: darkBlack,
      hasSabGradient: false,
      isTopBarLayerAlwaysVisible: true,
      topBar: PaddedRow(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    ref
                        .read(memberViewModelProvider)
                        .addMemberDialogPage
                        .value = 1;
                  },
                  icon: const Icon(CupertinoIcons.back)),
              gapW10,
              Text(
                "Payment",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: ResponsiveDashboard.isMobile(context) ? 18 : 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
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
          return const PaymentAddMemberWidget();
        },
      ),
    );
  }
}

class PaymentAddMemberWidget extends ConsumerWidget {
  const PaymentAddMemberWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ResponsiveMember.isMobile(context) ||
            ResponsiveMember.isTablet(context)
        ? PaddedColumn(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              gapH10,
              Text(
                "Selected Plan",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: ResponsiveMember.isMobile(context) ? 16 : 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              gapH12,
              ...List.generate(
                  3,
                  (index) => Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: DecoratedBox(
                          decoration: const BoxDecoration(
                            color: lightBlack,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
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
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                                trailing: Text("\$ 90",
                                    style: TextStyle(
                                        color: primaryColor,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600)),
                              ),
                              Wrap(
                                crossAxisAlignment: WrapCrossAlignment.start,
                                children: [
                                  TextButton.icon(
                                      label: const Text(
                                          "Activation Date - 2 jan 2024",
                                          style: TextStyle(
                                              color: kWhite,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400)),
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.mode_edit,
                                        color: kGreen,
                                        size: 14,
                                      )),
                                  TextButton.icon(
                                      label: const Text(
                                          "Expire Date - 2 jan 2024",
                                          style: TextStyle(
                                              color: kWhite,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400)),
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.mode_edit,
                                        color: kGreen,
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
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Invoice Details",
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: ResponsiveMember.isMobile(context) ? 16 : 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    gapH12,
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: lightBlack.withOpacity(0.4),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                        boxShadow: [
                          BoxShadow(
                            color: darkBlack.withOpacity(0.9),
                            spreadRadius: 2,
                            blurRadius: 90,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: PaddedColumn(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        children: [
                          Row(
                            children: [
                              Text("Cost of Plan",
                                  style: TextStyle(
                                      color: kWhite.withOpacity(0.7),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400)),
                              const Spacer(),
                              const Text(
                                "\$90",
                                style: TextStyle(
                                    color: kWhite,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          gapH3,
                          Row(
                            children: [
                              Text("Coupon Discount",
                                  style: TextStyle(
                                      color: kWhite.withOpacity(0.7),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400)),
                              const Spacer(),
                              const Text(
                                "\$10",
                                style: TextStyle(
                                    color: kWhite,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          gapH3,
                          Row(
                            children: [
                              Text("Discount",
                                  style: TextStyle(
                                      color: kWhite.withOpacity(0.7),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400)),
                              const Spacer(),
                              const Text(
                                "\$10",
                                style: TextStyle(
                                    color: kWhite,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          gapH3,
                          const Divider(
                            color: kGrey,
                            thickness: 0.3,
                          ),
                          gapH3,
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                              color: kyellowbg.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: PaddedColumn(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              children: [
                                const Row(
                                  children: [
                                    Text("Total Amount",
                                        style: TextStyle(
                                            color: kWhite,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400)),
                                    Spacer(),
                                    Text(
                                      "\$70",
                                      style: TextStyle(
                                          color: kWhite,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                                gapH3,
                                const Row(
                                  children: [
                                    Text("Current Installment Amount",
                                        style: TextStyle(
                                            color: kWhite,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400)),
                                    Spacer(),
                                    Text(
                                      "\$70",
                                      style: TextStyle(
                                          color: kWhite,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                                gapH3,
                                const Row(
                                  children: [
                                    Text("Pending Amount",
                                        style: TextStyle(
                                            color: kWhite,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400)),
                                    Spacer(),
                                    Text(
                                      "\$70",
                                      style: TextStyle(
                                          color: kWhite,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    gapH20,
                    TextField(
                      cursorColor: primaryColor,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        suffix: const Text("Apply"),
                        hintText: 'coupon code',
                        hintStyle: const TextStyle(
                          color: kGrey,
                          fontWeight: FontWeight.w600,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    gapH20,
                    TextField(
                      cursorColor: primaryColor,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: 'Extra Discount',
                        hintStyle: const TextStyle(
                          color: kGrey,
                          fontWeight: FontWeight.w600,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    gapH20,
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            cursorColor: primaryColor,
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              hintText: 'Amount pay',
                              hintStyle: const TextStyle(
                                color: kGrey,
                                fontWeight: FontWeight.w600,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        gapW10,
                        Expanded(
                          child: TextField(
                            cursorColor: primaryColor,
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              hintText: 'Amount pay',
                              hintStyle: const TextStyle(
                                color: kGrey,
                                fontWeight: FontWeight.w600,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    gapH20,
                    TextField(
                      cursorColor: primaryColor,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      maxLines: 2,
                      decoration: InputDecoration(
                        hintText: 'Remark',
                        hintStyle: const TextStyle(
                          color: kGrey,
                          fontWeight: FontWeight.w600,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    gapH20,
                    SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: FilledBtn(
                            text: "Done",
                            onPressed: () {
                              context.pop();
                              ref
                                  .read(memberViewModelProvider)
                                  .addMemberDialogPage
                                  .value = 0;
                            }))
                  ],
                ),
              ),
              gapH20,
            ],
          )
        : PaddedColumn(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              gapH10,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Selected Plan",
                          style: TextStyle(
                            color: primaryColor,
                            fontSize:
                                ResponsiveMember.isMobile(context) ? 16 : 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        gapH12,
                        ...List.generate(
                            3,
                            (index) => Padding(
                                  padding: const EdgeInsets.only(bottom: 12),
                                  child: DecoratedBox(
                                    decoration: const BoxDecoration(
                                      color: lightBlack,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                      boxShadow: [
                                        BoxShadow(
                                          color:
                                              Color.fromARGB(255, 46, 46, 46),
                                          spreadRadius: 2,
                                          blurRadius: 40,
                                          offset: Offset(0, 3),
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const ListTile(
                                          titleAlignment:
                                              ListTileTitleAlignment.bottom,
                                          title: Text("Gold Plan for 3 months",
                                              style: TextStyle(
                                                  color: kWhite,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500)),
                                          trailing: Text("\$ 90",
                                              style: TextStyle(
                                                  color: primaryColor,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600)),
                                        ),
                                        Wrap(
                                          crossAxisAlignment:
                                              WrapCrossAlignment.start,
                                          children: [
                                            TextButton.icon(
                                                label: const Text(
                                                    "Activation Date - 2 jan 2024",
                                                    style: TextStyle(
                                                        color: kWhite,
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w400)),
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.mode_edit,
                                                  color: kGreen,
                                                  size: 14,
                                                )),
                                            TextButton.icon(
                                                label: const Text(
                                                    "Expire Date - 2 jan 2024",
                                                    style: TextStyle(
                                                        color: kWhite,
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w400)),
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.mode_edit,
                                                  color: kGreen,
                                                  size: 14,
                                                )),
                                          ],
                                        ),
                                        gapH10
                                      ],
                                    ),
                                  ),
                                ))
                      ],
                    ),
                  )),
                  gapW20,
                  Expanded(
                      child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "",
                          style: TextStyle(
                            color: primaryColor,
                            fontSize:
                                ResponsiveMember.isMobile(context) ? 16 : 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        gapH12,
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: lightBlack.withOpacity(0.4),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                            boxShadow: [
                              BoxShadow(
                                color: darkBlack.withOpacity(0.9),
                                spreadRadius: 2,
                                blurRadius: 90,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: PaddedColumn(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            children: [
                              Row(
                                children: [
                                  Text("Cost of Plan",
                                      style: TextStyle(
                                          color: kWhite.withOpacity(0.7),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400)),
                                  const Spacer(),
                                  const Text(
                                    "\$90",
                                    style: TextStyle(
                                        color: kWhite,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                              gapH3,
                              Row(
                                children: [
                                  Text("Coupon Discount",
                                      style: TextStyle(
                                          color: kWhite.withOpacity(0.7),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400)),
                                  const Spacer(),
                                  const Text(
                                    "\$10",
                                    style: TextStyle(
                                        color: kWhite,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                              gapH3,
                              Row(
                                children: [
                                  Text("Discount",
                                      style: TextStyle(
                                          color: kWhite.withOpacity(0.7),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400)),
                                  const Spacer(),
                                  const Text(
                                    "\$10",
                                    style: TextStyle(
                                        color: kWhite,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                              gapH3,
                              const Divider(
                                color: kGrey,
                                thickness: 0.3,
                              ),
                              gapH3,
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                  color: kyellowbg.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: PaddedColumn(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  children: [
                                    const Row(
                                      children: [
                                        Text("Total Amount",
                                            style: TextStyle(
                                                color: kWhite,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400)),
                                        Spacer(),
                                        Text(
                                          "\$70",
                                          style: TextStyle(
                                              color: kWhite,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                    gapH3,
                                    const Row(
                                      children: [
                                        Text("Current Installment Amount",
                                            style: TextStyle(
                                                color: kWhite,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400)),
                                        Spacer(),
                                        Text(
                                          "\$70",
                                          style: TextStyle(
                                              color: kWhite,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                    gapH3,
                                    const Row(
                                      children: [
                                        Text("Pending Amount",
                                            style: TextStyle(
                                                color: kWhite,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400)),
                                        Spacer(),
                                        Text(
                                          "\$70",
                                          style: TextStyle(
                                              color: kWhite,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        gapH20,
                        TextField(
                          cursorColor: primaryColor,
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            suffix: const Text("Apply"),
                            hintText: 'coupon code',
                            hintStyle: const TextStyle(
                              color: kGrey,
                              fontWeight: FontWeight.w600,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        gapH20,
                        TextField(
                          cursorColor: primaryColor,
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            hintText: 'Extra Discount',
                            hintStyle: const TextStyle(
                              color: kGrey,
                              fontWeight: FontWeight.w600,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        gapH20,
                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                cursorColor: primaryColor,
                                keyboardType: TextInputType.name,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  hintText: 'Amount pay',
                                  hintStyle: const TextStyle(
                                    color: kGrey,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            gapW10,
                            Expanded(
                              child: TextField(
                                cursorColor: primaryColor,
                                keyboardType: TextInputType.name,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  hintText: 'Amount pay',
                                  hintStyle: const TextStyle(
                                    color: kGrey,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        gapH20,
                        TextField(
                          cursorColor: primaryColor,
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          maxLines: 2,
                          decoration: InputDecoration(
                            hintText: 'Remark',
                            hintStyle: const TextStyle(
                              color: kGrey,
                              fontWeight: FontWeight.w600,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        gapH20,
                        SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: FilledBtn(
                                text: "Checkout",
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  ref
                                      .read(memberViewModelProvider)
                                      .addMemberDialogPage
                                      .value = 0;
                                  showDialog(
                                      barrierColor: kGrey.withOpacity(0.05),
                                      context: context,
                                      builder: (BuildContext context) =>
                                          CupertinoAlertDialog(
                                            content: Column(
                                              children: [
                                                PaddedColumn(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 16),
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    LottieBuilder.asset(
                                                        "assets/animations/profile_suc.json",
                                                        fit: BoxFit.fill,
                                                        repeat: false),
                                                    gapH20,
                                                    const Text(
                                                      "Member Added Successfully",
                                                      style: TextStyle(
                                                        color: kWhite,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    gapH20,
                                                  ],
                                                )
                                              ],
                                            ),
                                            actions: <Widget>[
                                              CupertinoDialogAction(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: const Text("Ok"),
                                              )
                                            ],
                                          ));
                                }))
                      ],
                    ),
                  )),
                ],
              ),
              gapH20,
            ],
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
