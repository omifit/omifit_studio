import 'package:country_code_picker/country_code_picker.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/services.dart';
import 'package:iconly/iconly.dart';
import 'package:image_picker/image_picker.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/widget/imageicon/profile_img.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

dynamic editProfileDialog(BuildContext context) {
  final pageIndexNotifier = ValueNotifier(0);
  return WoltModalSheet.show(
    minDialogWidth: 750,
    maxDialogWidth: 1000,
    context: context,
    pageIndexNotifier: pageIndexNotifier,
    pageListBuilder: (modelsheet) {
      return [
        WoltModalSheetPage(
          backgroundColor: darkBlack,
          surfaceTintColor: darkBlack,
          hasSabGradient: false,
          isTopBarLayerAlwaysVisible: true,
          topBar: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Profile",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          child: PaddedColumn(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            children: [
              gapH25,
              InkWell(
                overlayColor: WidgetStateProperty.all(Colors.transparent),
                onTap: () {
                  HapticFeedback.lightImpact();
                  pageIndexNotifier.value = 1;
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
                readOnly: true,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(
                    10,
                  ),
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
                  suffixIcon: IconButton(
                    onPressed: () {
                      pageIndexNotifier.value = 2;
                    },
                    icon: const Icon(
                      Icons.edit,
                      color: primaryColor,
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
                  );
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
                initialValue: 2,
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
                duration: const Duration(
                  milliseconds: 300,
                ),
                curve: Curves.easeInToLinear,
                onValueChanged: (v) {
                  print(v);
                },
              ),
              gapH36,
              TextField(
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
              ),
              gapH40,
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
          ),
        ),
        WoltModalSheetPage(
          backgroundColor: darkBlack,
          surfaceTintColor: darkBlack,
          hasSabGradient: false,
          isTopBarLayerAlwaysVisible: true,
          topBar: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        pageIndexNotifier.value = 0;
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                    gapW10,
                    const Text(
                      "Update Profile Picture",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          child: PaddedColumn(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            children: [
              gapH32,
              const CircleAvatar(
                radius: 150,
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
              gapH90,
              SizedBox(
                width: double.infinity,
                height: 60,
                child: FilledBtn(
                  text: "Continue",
                  onPressed: () {
                    ImagePicker().pickImage(source: ImageSource.camera);
                  },
                ),
              ),
              gapH32,
            ],
          ),
        ),
        WoltModalSheetPage(
          backgroundColor: darkBlack,
          surfaceTintColor: darkBlack,
          hasSabGradient: false,
          isTopBarLayerAlwaysVisible: true,
          topBar: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        pageIndexNotifier.value = 0;
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                    gapW5,
                    const Text(
                      "Update Phone Number",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          child: PaddedColumn(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            children: [
              gapH25,
              TextField(
                inputFormatters: [
                  LengthLimitingTextInputFormatter(
                    10,
                  ),
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
                  onPressed: () {
                    pageIndexNotifier.value = 0;
                  },
                ),
              ),
              gapH32,
            ],
          ),
        ),
      ];
    },
  );
}
