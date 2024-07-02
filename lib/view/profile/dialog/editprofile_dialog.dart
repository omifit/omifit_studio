import 'package:country_code_picker/country_code_picker.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/services.dart';
import 'package:iconly/iconly.dart';
import 'package:intl/intl.dart';
import 'package:omifit/core/constants.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/profile/profile_view_model.dart';
import 'package:omifit/widget/imageicon/profile_img.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

//* ===============> Profile Details
class ProfileDetailDialog {
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
              "Profile",
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
      child: const ProfileDetailWidget(),
    );
  }
}

class ProfileDetailWidget extends ConsumerStatefulWidget {
  const ProfileDetailWidget({super.key});

  @override
  ConsumerState<ProfileDetailWidget> createState() =>
      _ProfileDetailWidgetState();
}

class _ProfileDetailWidgetState extends ConsumerState<ProfileDetailWidget> {
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
              ref.read(profileViewModelProvider).pageIndexNotifier.value = 1;
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
          ref.read(profileViewModelProvider).pageIndexNotifier.value = 0;
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
            Future.delayed(
                const Duration(milliseconds: 200),
                () => ref
                    .read(profileViewModelProvider)
                    .pageIndexNotifier
                    .value = 0);
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
