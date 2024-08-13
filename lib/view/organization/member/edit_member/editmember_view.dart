import 'package:country_code_picker/country_code_picker.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/services.dart';
import 'package:iconly/iconly.dart';
import 'package:intl/intl.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/profile/profile_view_model.dart';
import 'package:omifit/widget/imageicon/profile_img.dart';
import 'package:omifit/widget/picker/profession_dropdown.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

//* ===============> Profile Details
class EditMemberDetailsDialog {
  static WoltModalSheetPage build(BuildContext context) {
    return WoltModalSheetPage(
      backgroundColor: darkBlack,
      surfaceTintColor: darkBlack,
      isTopBarLayerAlwaysVisible: true,
      topBar: PaddedRow(
        padding: EdgeInsets.symmetric(
            horizontal: Responsive.isMobile(context) ? 16 : 20),
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              "Edit Member Details",
              style: TextStyle(
                color: Colors.white,
                fontSize: Responsive.isMobile(context) ? 16 : 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      trailingNavBarWidget: Padding(
        padding: EdgeInsets.only(right: Responsive.isMobile(context) ? 14 : 22),
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
      child: const EditMemberDetailsWidget(),
    );
  }
}

class EditMemberDetailsWidget extends ConsumerStatefulWidget {
  const EditMemberDetailsWidget({super.key});

  @override
  ConsumerState<EditMemberDetailsWidget> createState() =>
      _EditMemberDetailsWidgetState();
}

class _EditMemberDetailsWidgetState
    extends ConsumerState<EditMemberDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    final ProfileViewModel profileViewModel =
        ref.watch(profileViewModelProvider);
    return PaddedColumn(
      padding: EdgeInsets.symmetric(
        horizontal: Responsive.isMobile(context) ? 16 : 30,
      ),
      children: [
        gapH25,
        InkWell(
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          onTap: () {
            HapticFeedback.lightImpact();
          },
          child: const Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 70,
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
        gapH25,
        TextField(
          controller: TextEditingController(),
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
          controller: TextEditingController(),
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
        if (ResponsiveMember.isMobile(context) ||
            ResponsiveMember.isMobile(context))
          Column(
            children: [
              TextField(
                controller: TextEditingController(),
                readOnly: true,
                onTap: () {
                  showDatePicker(
                    context: context,
                    initialDate: TextEditingController().text == ""
                        ? DateTime.now()
                        : DateFormat('MM/dd/yyyy')
                            .parse(TextEditingController().text),
                    firstDate: DateTime(1900),
                    lastDate: DateTime.now(),
                    onDatePickerModeChange: (value) => print(value),
                  ).then((value) {
                    if (value != null) {
                      TextEditingController().text =
                          DateFormat('MM/dd/yyyy').format(value);
                    }
                  });
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
              ProfessionDropdown(onChange: (value) {}, initialValue: "Student"),
            ],
          )
        else
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: TextEditingController(),
                  readOnly: true,
                  onTap: () {
                    showDatePicker(
                      context: context,
                      initialDate: TextEditingController().text == ""
                          ? DateTime.now()
                          : DateFormat('MM/dd/yyyy')
                              .parse(TextEditingController().text),
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now(),
                      onDatePickerModeChange: (value) => print(value),
                    ).then((value) {
                      if (value != null) {
                        TextEditingController().text =
                            DateFormat('MM/dd/yyyy').format(value);
                      }
                    });
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
              gapW20,
              Expanded(
                child: ProfessionDropdown(
                    onChange: (value) {}, initialValue: "Student"),
              )
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
        gapH36,
        TextField(
          controller: TextEditingController(),
          cursorColor: primaryColor,
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            hintText: 'Enter Your Location',
            hintStyle: const TextStyle(
              color: kGrey,
              fontWeight: FontWeight.w600,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onChanged: (value) {},
        ),
        gapH10,
        SizedBox(
          width: double.infinity,
          height: 60,
          child: FilledBtn(
            text: "Save",
            onPressed: () {
              //
              // ref.read(profileViewModelProvider).pageIndexNotifier.value = 1;
            },
          ),
        ),
        gapH32,
      ],
    );
  }
}

//* ====================> update phone number
class UpdatePhoneDialog {
  static WoltModalSheetPage build(BuildContext context, WidgetRef ref) {
    return WoltModalSheetPage(
      backgroundColor: darkBlack,
      surfaceTintColor: lightBlack,
      hasSabGradient: false,
      isTopBarLayerAlwaysVisible: true,
      leadingNavBarWidget: IconButton(
        onPressed: () {
          // ref.read(profileViewModelProvider).pageIndexNotifier.value = 0;
        },
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.white,
        ),
      ),
      trailingNavBarWidget: Padding(
        padding: EdgeInsets.only(right: Responsive.isMobile(context) ? 16 : 22),
        child: IconButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(kyellowbg),
          ),
          onPressed: () {
            Navigator.of(context).pop();
            // Future.delayed(
            //     const Duration(milliseconds: 200),
            //     () => ref
            //         .read(profileViewModelProvider)
            //         .pageIndexNotifier
            //         .value = 0);
          },
          icon: const Icon(Icons.close, color: primaryColor),
        ),
      ),
      child: const UpdatePhoneWidget(),
    );
  }
}

class UpdatePhoneWidget extends ConsumerWidget {
  const UpdatePhoneWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PaddedColumn(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      children: [
        gapH25,
        TextField(
          cursorColor: primaryColor,
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            hintText: 'Enter OTP',
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
          height: 60,
          child: FilledBtn(
            text: "Continue",
            onPressed: () {},
          ),
        ),
        gapH32,
      ],
    );
  }
}
