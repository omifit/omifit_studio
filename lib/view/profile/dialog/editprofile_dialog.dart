import 'package:country_code_picker/country_code_picker.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/services.dart';
import 'package:iconly/iconly.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:omifit/core/constants.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/profile/profile_view_model.dart';
import 'package:omifit/widget/imageicon/profile_img.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

dynamic editProfileDialog(BuildContext context, WidgetRef ref) {
  final ProfileViewModel profileViewModel = ref.watch(profileViewModelProvider);
  
  return WoltModalSheet.show(
    minDialogWidth: 750,
    maxDialogWidth: 1000,
    context: context,
    barrierDismissible: false,
    pageIndexNotifier: profileViewModel.pageIndexNotifier,
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
                Row(
                  children: [
                    gapW10,
                    const Text(
                      "Profile",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
             
              ],
            ),
          ),    
          trailingNavBarWidget:  IconButton(
                  onPressed: () {
                    modelsheet.pop();
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                ),
          child:  const ProfileDetailSheet(),
        ),
        // update picture
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
                       profileViewModel.pageIndexNotifier.value = 0;
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
               
              ],
            ),
          ),
          child: const UpdatePictureSheet(),
        ),
        // update phone number
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
          child: const UpdatePhoneSheet(),
        ),
      ];
    },
  );
}

//* ===============> update Profile Details
class ProfileDetailSheet extends ConsumerStatefulWidget {
  const ProfileDetailSheet({super.key});

  @override
  ConsumerState<ProfileDetailSheet> createState() => _ProfileDetailSheetState();
}

class _ProfileDetailSheetState extends ConsumerState<ProfileDetailSheet> {
  @override
  Widget build(BuildContext context) {
    final ProfileViewModel profileViewModel = ref.watch(profileViewModelProvider);
    return PaddedColumn(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      children: [
        gapH25,
        InkWell(
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          onTap: () {
            HapticFeedback.lightImpact();
            ref.watch(profileViewModelProvider).pageIndexNotifier.value = 1;
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
          controller: profileViewModel.nameController,
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
          controller: profileViewModel.phoneController,
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
          controller: profileViewModel.dobController,
          readOnly: true,
          onTap: () {
            showDatePicker(
              context: context,
              initialDate: profileViewModel.dobController.text == ""
                  ? DateTime.now()
                  : DateFormat('MM/dd/yyyy')
                      .parse(profileViewModel.dobController.text),
              firstDate: DateTime(1900),
              lastDate: DateTime.now(),
              onDatePickerModeChange: (value) => print(value),
            ).then((value) {
              if (value != null) {
                profileViewModel.dobController.text =
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
        CustomSlidingSegmentedControl<int>(
          isStretch: true,
          initialValue: profileViewModel.gender.index + 1,
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
          onValueChanged: (v) {
            profileViewModel.setGender(
              v == 1
                  ? Gender.male
                  : v == 2
                      ? Gender.female
                      : Gender.others,
            );
          },
        ),
        gapH36,
        TextField(
          controller: profileViewModel.locationController,
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
          onChanged: (value) {
            profileViewModel.searchLocation(value);
          },
        ),
        gapH10,
        if (profileViewModel.locationController.text != "" &&
            profileViewModel.locationSearch.isNotEmpty)
          SizedBox(
            height: 225,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: profileViewModel.locationSearch.length,
              itemBuilder: (context, index) {
                return ListTile(
                  visualDensity: VisualDensity.compact,
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(
                    Icons.location_on_outlined,
                    size: 18,
                    color: kRed,
                  ),
                  title: Text(
                    profileViewModel.locationSearch[index],
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: kGrey,
                    ),
                  ),
                  onTap: () {
                    profileViewModel.locationController.text =
                        profileViewModel.locationSearch[index];
                    profileViewModel.clearLocationSearch();
                  },
                );
              },
            ),
          ),
        gapH10,
        SizedBox(
          width: double.infinity,
          height: 60,
          child: FilledBtn(
            text: "Continue",
            onPressed: () {
              context.pushNamed(AppRoute.verify.name);
            },
          ),
        ),
        gapH32,
      ],
    );
  }
}

//* ===================> update profile picture
class UpdatePictureSheet extends ConsumerWidget {
  const UpdatePictureSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PaddedColumn(
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
    );
  }
}

//* ====================> update phone number
class UpdatePhoneSheet extends ConsumerWidget {
  const UpdatePhoneSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PaddedColumn(
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
            suffix: TextButton(
              onPressed: () {},
              child: const Text("Send OTP"),
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
            
            },
          ),
        ),
        gapH32,
      ],
    );
  }
}
