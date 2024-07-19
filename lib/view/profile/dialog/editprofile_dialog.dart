import 'package:country_code_picker/country_code_picker.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/services.dart';
import 'package:iconly/iconly.dart';
import 'package:intl/intl.dart';
import 'package:omifit/core/constants.dart';
import 'package:omifit/data/auth/model/send_otp/sendotp_model.dart';
import 'package:omifit/data/auth/model/user_update/user_details_update_model.dart';
import 'package:omifit/utils/file_picker.dart';
import 'package:omifit/utils/parse.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/profile/profile_view_model.dart';
import 'package:omifit/widget/imageicon/profile_img.dart';
import 'package:omifit/widget/picker/profession_dropdown.dart';
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
  final _formkey = GlobalKey<FormState>();

  @override
  void initState() {
    Future.delayed(Duration.zero, () => getUserData());
    super.initState();
  }

  void getUserData() {
    final ProfileViewModel profileViewModel =
        ref.watch(profileViewModelProvider);
    profileViewModel.nameController.text =
        profileViewModel.userDetailsRes?.body?.user?.name ?? "";
    profileViewModel.phoneController.text = phoneviewParse(
        profileViewModel.userDetailsRes?.body?.user?.phoneNumber);
    profileViewModel.dobController.text =
        dobviewParse(profileViewModel.userDetailsRes?.body?.user?.dateOfBirth);
    profileViewModel.setProfession(professionviewParse(
        profileViewModel.userDetailsRes?.body?.user?.profession));
    profileViewModel.setGender(
        genderViewParse(profileViewModel.userDetailsRes?.body?.user?.gender));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final ProfileViewModel profileViewModel =
        ref.watch(profileViewModelProvider);
    return Form(
      key: _formkey,
      child: PaddedColumn(
        padding: EdgeInsets.symmetric(
          horizontal: Responsive.isMobile(context) ? 16 : 30,
        ),
        children: [
          gapH25,
          InkWell(
            overlayColor: WidgetStateProperty.all(Colors.transparent),
            onTap: () {
              HapticFeedback.lightImpact();
              openPickImageModalSheet(context).then((value) {
                if (value != null) {}
              });
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
          TextFormField(
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
            validator: (value) => value!.isEmpty ? "Name can't be empty" : null,
          ),
          gapH25,
          TextFormField(
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
            validator: (value) => value!.isEmpty
                ? "Phone number can't be empty"
                : value.length < 10
                    ? "Phone number must be 10 digits"
                    : null,
          ),
          gapH25,
          TextFormField(
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
                  profileViewModel.dobController.text = dobsendParse(value);
                  setState(() {});
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
            validator: (value) => value!.isEmpty ? "DOB can't be empty" : null,
          ),
          gapH25,
          ProfessionDropdown(
            onChange: (value) {
              profileViewModel.setProfession(value);
              setState(() {});
            },
            initialValue: profileViewModel.profession,
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
              profileViewModel.setGender((v == 1)
                  ? Gender.male
                  : (v == 2)
                      ? Gender.female
                      : Gender.others);
            },
          ),
          gapH36,
          SizedBox(
            width: double.infinity,
            height: 60,
            child: FilledBtn(
              isLoading: (profileViewModel.phoneController.text !=
                      phoneviewParse(profileViewModel
                          .userDetailsRes?.body?.user?.phoneNumber))
                  ? profileViewModel.lodingsendotp
                  : profileViewModel.lodinguserupdate,
              text: "Continue",
              onPressed: () {
                if (_formkey.currentState!.validate()) {
                  if (profileViewModel.phoneController.text !=
                      phoneviewParse(profileViewModel
                          .userDetailsRes?.body?.user?.phoneNumber)) {
                    print(
                        "phoneController.text: ${profileViewModel.phoneController.text}");
                    profileViewModel.sendOtp(
                        SendOtpReq(
                            phoneNumber: phonesendParse(
                                profileViewModel.phoneController.text),
                            forOldUser: false,
                            forNewUser: true),
                        context);
                  } else {
                    profileViewModel.userUpdate(
                        UserDetailsUpdateReq(
                          name: profileViewModel.nameController.text,
                          dateOfBirth: profileViewModel.dobController.text,
                          gender: genderSendParse(profileViewModel.gender),
                          profession:
                              professionSendParse(profileViewModel.profession),
                        ),
                        context);
                  }
                }
              },
            ),
          ),
          gapH32,
        ],
      ),
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
    final TextEditingController otpCtrl = TextEditingController();
    final ProfileViewModel profileViewModel =
        ref.watch(profileViewModelProvider);
    return PaddedColumn(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      children: [
        gapH25,
        TextField(
          controller: otpCtrl,
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
            isLoading: profileViewModel.lodingvotp,
            onPressed: () {
              if (otpCtrl.text.isNotEmpty) {
                profileViewModel.verifyOtp(otpCtrl.text, context);
              }
            },
          ),
        ),
        gapH32,
      ],
    );
  }
}
