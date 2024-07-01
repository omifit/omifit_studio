import 'package:country_code_picker/country_code_picker.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:iconly/iconly.dart';
import 'package:omifit/utils/snacbar.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/widget/imageicon/profile_img.dart';
import 'package:pinput/pinput.dart';
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
                "STEP-1  Add Member",
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

class AddMemberWidget extends StatelessWidget {
  const AddMemberWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PaddedColumn(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        gapH30,
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Align(
                child: InkWell(
                  overlayColor: WidgetStateProperty.all(Colors.transparent),
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
                        color: lightBlack,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      thumbDecoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInToLinear,
                      onValueChanged: (v) {},
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
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: FilledBtn(
                        text: "Continue",
                        onPressed: () {},
                      ),
                    ),
                  ],
                )),
          ],
        ),
        gapH50,
      ],
    );
  }
}

//! OTP member dialog
class OtpAddMemberDialog {
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
                "STEP-2  Verify OTP",
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
          },
          icon: const Icon(Icons.close, color: primaryColor),
        ),
      ),
      child: StatefulBuilder(
        builder: (BuildContext context, setState) {
          return const OtpAddMemberWidget();
        },
      ),
    );
  }
}

class OtpAddMemberWidget extends StatefulWidget {
  const OtpAddMemberWidget({
    super.key,
  });

  @override
  State<OtpAddMemberWidget> createState() => _OtpAddMemberWidgetState();
}

class _OtpAddMemberWidgetState extends State<OtpAddMemberWidget> {
  String? pinCode;
  @override
  Widget build(BuildContext context) {
    return PaddedColumn(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        gapH30,
        const Text(
          'Enter your phone number to receive a verification code via SMS or Call. This will help us verify your identity and secure your account.',
          style: TextStyle(
            color: kGrey,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        gapH40,
        Pinput(
            defaultPinTheme: PinTheme(
          width: 80,
          height: 80,
          textStyle: const TextStyle(
            fontSize: 20,
            color: kWhite,
            fontWeight: FontWeight.w600,
          ),
          decoration: BoxDecoration(
            color: lightBlack.withOpacity(0.5),
            border: Border.all(
              color: kGrey,
            ),
            borderRadius: BorderRadius.circular(4),
          ),
        )),
        gapH40,
        SizedBox(
          width: double.infinity,
          height: 50,
          child: FilledBtn(
            text: "Next",
            onPressed: () {
              if (pinCode?.length == 4) {
                context.goNamed(AppRoute.profile.name);
              } else {
                Ksnackbar.warning('Invalid Pin', context);
              }
            },
          ),
        ),
        gapH40,
      ],
    );
  }
}

//! Plan member dialog
class PlanAddMemberDialog {
  static WoltModalSheetPage build(BuildContext context) {
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
              onPressed: () {},
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
              gapW10,
              Text(
                "Pick a Plan",
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
      padding: const EdgeInsets.symmetric(horizontal: 22),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        gapH30,
        AlignedGridView.count(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 2,
          mainAxisSpacing: 25,
          crossAxisSpacing: 25,
          itemCount: 7,
          itemBuilder: (context, index) {
            return Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: lightBlack,
                borderRadius: const BorderRadius.all(Radius.circular(32)),
                border: Border.fromBorderSide(BorderSide(
                    width: 2,
                    color: index == 0 ? primaryColor : Colors.transparent)),
              ),
              child: PaddedColumn(
                crossAxisAlignment: CrossAxisAlignment.start,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    visualDensity: VisualDensity.compact,
                    titleAlignment: ListTileTitleAlignment.top,
                    title: const Text("Gold Plan for 3 months",
                        style: TextStyle(
                            color: secondaryColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w800)),
                    trailing: Radio(
                      value: index,
                      groupValue: 0,
                      onChanged: (value) {},
                      activeColor: secondaryColor,
                    ),
                  ),
                  const Text("\$ 90",
                      style: TextStyle(
                          color: kWhite,
                          fontSize: 26,
                          fontWeight: FontWeight.w800)),
                  gapH10,
                  const Text(
                      "We advertise on social media to drive local clients onto Cosmetropolis and directly to your profile",
                      style: TextStyle(
                          color: kWhite,
                          fontSize: 14,
                          fontWeight: FontWeight.w200)),
                  gapH10,
                  const ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(CupertinoIcons.time, color: kGreen),
                    title: Text("Duration - 6 months",
                        style: TextStyle(
                            color: kWhite,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            );
          },
        ),
        gapH10,
      ],
    );
  }
}

//! Payment member dialog
class PaymentAddMemberDialog {
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
                "Payment Details",
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

class PaymentAddMemberWidget extends StatelessWidget {
  const PaymentAddMemberWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PaddedColumn(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        gapH30,
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Container(
              child: Column(
                children: [
                  ...List.generate(
                      3,
                      (index) => Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              decoration: const BoxDecoration(
                                color: lightBlack,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                border: Border.fromBorderSide(
                                    BorderSide(width: 1.5, color: kGrey)),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const ListTile(
                                    contentPadding: EdgeInsets.zero,
                                    visualDensity: VisualDensity.compact,
                                    titleAlignment: ListTileTitleAlignment.top,
                                    title: Text("Gold Plan for 3 months",
                                        style: TextStyle(
                                            color: secondaryColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600)),
                                    trailing: Text("\$ 90",
                                        style: TextStyle(
                                            color: kWhite,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800)),
                                  ),
                                  Wrap(
                                    crossAxisAlignment:
                                        WrapCrossAlignment.start,
                                    children: [
                                      TextButton.icon(
                                          label: const Text(
                                              "Start - 2 jan 2024",
                                              style: TextStyle(
                                                  color: kWhite,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400)),
                                          onPressed: () {},
                                          icon: const Icon(
                                            IconlyBold.calendar,
                                            color: kGreen,
                                          )),
                                      TextButton.icon(
                                          label: const Text("End - 2 jan 2024",
                                              style: TextStyle(
                                                  color: kWhite,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400)),
                                          onPressed: () {},
                                          icon: const Icon(
                                            IconlyBold.calendar,
                                            color: kGreen,
                                          )),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ))
                ],
              ),
            )),
            gapW30,
            Expanded(
                child: Container(
              child: Column(
                children: [
                  DecoratedBox(
                    decoration: const BoxDecoration(
                      color: lightBlack,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: PaddedColumn(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      children: [
                        const Row(
                          children: [
                            Text("Amount",
                                style: TextStyle(
                                    color: kWhite,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600)),
                            Spacer(),
                            Text(
                              "\$90",
                              style: TextStyle(
                                  color: kWhite,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        gapH3,
                        const Row(
                          children: [
                            Text("Coupon Discount",
                                style: TextStyle(
                                    color: kWhite,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600)),
                            Spacer(),
                            Text(
                              "\$10",
                              style: TextStyle(
                                  color: kWhite,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        gapH3,
                        const Row(
                          children: [
                            Text("Discount",
                                style: TextStyle(
                                    color: kWhite,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600)),
                            Spacer(),
                            Text(
                              "\$10",
                              style: TextStyle(
                                  color: kWhite,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        gapH3,
                        const Divider(
                          color: kGrey,
                          thickness: 0.6,
                        ),
                        gapH3,
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: darkBlack,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: PaddedColumn(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            children: [
                              const Row(
                                children: [
                                  Text("Total Amount",
                                      style: TextStyle(
                                          color: kWhite,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600)),
                                  Spacer(),
                                  Text(
                                    "\$70",
                                    style: TextStyle(
                                        color: kWhite,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                              gapH3,
                              const Row(
                                children: [
                                  Text("Payable Amount",
                                      style: TextStyle(
                                          color: kWhite,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600)),
                                  Spacer(),
                                  Text(
                                    "\$70",
                                    style: TextStyle(
                                        color: kWhite,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                              gapH3,
                              const Row(
                                children: [
                                  Text("Duo Amount",
                                      style: TextStyle(
                                          color: kWhite,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600)),
                                  Spacer(),
                                  Text(
                                    "\$70",
                                    style: TextStyle(
                                        color: kWhite,
                                        fontSize: 16,
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
                    maxLines: 3,
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
                      child: FilledBtn(text: "Done", onPressed: () {}))
                ],
              ),
            )),
          ],
        ),
        gapH10,
      ],
    );
  }
}
