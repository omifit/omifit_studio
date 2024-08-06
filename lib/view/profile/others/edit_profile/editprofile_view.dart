import 'dart:io';

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

class EditProfileDetailView extends ConsumerStatefulWidget {
  const EditProfileDetailView({super.key});
  @override
  ConsumerState<EditProfileDetailView> createState() =>
      _EditProfileDetailViewState();
}

class _EditProfileDetailViewState extends ConsumerState<EditProfileDetailView> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  Gender _gender = Gender.male;
  String _profession = "Student";
  File? _image;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      getUserData();
    });
    super.initState();
  }

  void getUserData() {
    final ProfileViewModel profileViewModel =
        ref.watch(profileViewModelProvider);
    _nameController.text =
        profileViewModel.userDetailsRes?.body?.user?.name ?? "";
    _phoneController.text = phoneviewParse(
        profileViewModel.userDetailsRes?.body?.user?.phoneNumber);
    _dobController.text =
        dobviewParse(profileViewModel.userDetailsRes?.body?.user?.dateOfBirth);
    _profession = professionviewParse(
        profileViewModel.userDetailsRes?.body?.user?.profession);
    print("profession - $_profession");
    _gender =
        genderViewParse(profileViewModel.userDetailsRes?.body?.user?.gender);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final ProfileViewModel profileViewModel =
        ref.watch(profileViewModelProvider);
    return Scaffold(
      backgroundColor: darkBlack,
      appBar: AppBar(
        backgroundColor: darkBlack,
        title: Text(
          "Profile",
          style: TextStyle(
            color: Colors.white,
            fontSize: Responsive.isMobile(context) ? 16 : 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios, color: kWhite),
        ),
      ),
      body: SingleChildScrollView(
        child: Align(
          child: Form(
            key: _formkey,
            child: SizedBox(
              width: Responsive.isMobile(context) ? double.infinity : 600,
              child: PaddedColumn(
                padding: EdgeInsets.symmetric(
                  horizontal: Responsive.isMobile(context) ||
                          Responsive.isTablet(context)
                      ? 16
                      : 0,
                ),
                children: [
                  gapH25,
                  InkWell(
                    overlayColor: WidgetStateProperty.all(Colors.transparent),
                    onTap: () async {
                      HapticFeedback.lightImpact();
                      await openPickImageModalSheet(context).then((value) {
                        print("uploade-img link - $value");
                      });
                    },
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        if (_image != null)
                          CircleAvatar(
                            radius: 60,
                            backgroundColor: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(3),
                              child: Image.network(_image!.path),
                            ),
                          )
                        else
                          CircleAvatar(
                            radius: 60,
                            backgroundColor: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(3),
                              child: ProfileImg(
                                url: (profileViewModel.userDetailsRes?.body
                                                ?.user?.profileImage ==
                                            null ||
                                        profileViewModel.userDetailsRes?.body
                                                ?.user?.profileImage ==
                                            '')
                                    ? damiProfile(
                                        genderViewParse(profileViewModel
                                            .userDetailsRes
                                            ?.body
                                            ?.user
                                            ?.gender),
                                        profileViewModel.userDetailsRes?.body
                                                ?.user?.dateOfBirth ??
                                            "")
                                    : profileViewModel.userDetailsRes!.body!
                                        .user!.profileImage!,
                                height: double.infinity,
                                width: double.infinity,
                              ),
                            ),
                          ),
                        const CircleAvatar(
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
                    controller: _nameController,
                    cursorColor: primaryColor,
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: 'Enter Your Name',
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) =>
                        value!.isEmpty ? "Name can't be empty" : null,
                  ),
                  gapH25,
                  TextFormField(
                    controller: _phoneController,
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
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
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
                    controller: _dobController,
                    readOnly: true,
                    onTap: () {
                      showDatePicker(
                        context: context,
                        initialDatePickerMode: DatePickerMode.year,
                        initialDate: _dobController.text == ""
                            ? DateTime.now()
                            : DateFormat('MM/dd/yyyy')
                                .parse(_dobController.text),
                        firstDate: DateTime(1900),
                        lastDate: DateTime.now(),
                        onDatePickerModeChange: (value) => print(value),
                      ).then((value) {
                        if (value != null) {
                          _dobController.text = dobsendParse(value);
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
                        fontWeight: FontWeight.w500,
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
                    validator: (value) =>
                        value!.isEmpty ? "DOB can't be empty" : null,
                  ),
                  gapH25,
                  ProfessionDropdown(
                    onChange: (value) {
                      _profession = value;
                      setState(() {});
                    },
                    initialValue: _profession,
                  ),
                  gapH25,
                  SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: CustomSlidingSegmentedControl<int>(
                      isStretch: true,
                      innerPadding: const EdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 4,
                      ),
                      initialValue: _gender.index + 1,
                      children: const {
                        1: Text('Male'),
                        2: Text('Female'),
                        3: Text('Others'),
                      },
                      decoration: BoxDecoration(
                        color: lightBlack,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      thumbDecoration: BoxDecoration(
                        color: darkBlack,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInToLinear,
                      onValueChanged: (v) {
                        _gender = (v == 1)
                            ? Gender.male
                            : (v == 2)
                                ? Gender.female
                                : Gender.others;
                      },
                    ),
                  ),
                  gapH46,
                  SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: FilledBtn(
                      isLoading: (_phoneController.text !=
                              phoneviewParse(profileViewModel
                                  .userDetailsRes?.body?.user?.phoneNumber))
                          ? profileViewModel.lodingsendotp
                          : profileViewModel.lodinguserupdate,
                      text: "Continue",
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          if (_phoneController.text.trim() !=
                              phoneviewParse(profileViewModel
                                  .userDetailsRes?.body?.user?.phoneNumber)) {
                            profileViewModel.setUserupReq(UserDetailsUpdateReq(
                              name: _nameController.text.trim(),
                              phoneNumber:
                                  phonesendParse(_phoneController.text.trim()),
                              dateOfBirth: _dobController.text,
                              profession: professionSendParse(_profession),
                              gender: genderSendParse(_gender),
                            ));
                            profileViewModel.sendOtp(
                              SendOtpReq(
                                  phoneNumber: phonesendParse(
                                      _phoneController.text.trim()),
                                  forOldUser: false,
                                  forNewUser: true),
                              context,
                            );
                          } else {
                            profileViewModel.setUserupReq(UserDetailsUpdateReq(
                              name: _nameController.text,
                              dateOfBirth: _dobController.text,
                              profession: professionSendParse(_profession),
                              gender: genderSendParse(_gender),
                            ));
                            profileViewModel.userUpdate(
                              profileViewModel.userupReq,
                              context,
                            );
                          }
                        }
                      },
                    ),
                  ),
                  gapH32,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
