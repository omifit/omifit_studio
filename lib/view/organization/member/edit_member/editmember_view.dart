import 'package:country_code_picker/country_code_picker.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/services.dart';
import 'package:iconly/iconly.dart';
import 'package:intl/intl.dart';
import 'package:omifit/core/constants.dart';
import 'package:omifit/data/auth/auth_repo_impl.dart';
import 'package:omifit/data/auth/model/send_otp/sendotp_model.dart';
import 'package:omifit/data/auth/model/verify_otp/verifyotp_model.dart';
import 'package:omifit/data/home/member/model/edit_member_model.dart';
import 'package:omifit/utils/file_picker.dart';
import 'package:omifit/utils/parse.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/organization/member/member_view_model.dart';
import 'package:omifit/widget/imageicon/profile_img.dart';
import 'package:omifit/widget/picker/profession_dropdown.dart';
import 'package:pinput/pinput.dart';

// // EditMemberView
class EditMemberView extends ConsumerStatefulWidget {
  const EditMemberView({super.key});
  @override
  ConsumerState<EditMemberView> createState() => _EditMemberViewState();
}

class _EditMemberViewState extends ConsumerState<EditMemberView> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  Gender _gender = Gender.male;
  String _profession = "Student";
  String? _image;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      getUserData();
    });
    super.initState();
  }

  void getUserData() {
    final MemberViewModel memberViewModel = ref.watch(memberViewModelProvider);
    _nameController.text = memberViewModel
            .memberDetailsRes?.body?.organizationMember?.user?.name ??
        "";
    _phoneController.text = remove91(memberViewModel
        .memberDetailsRes?.body?.organizationMember?.user?.phoneNumber);
    _dobController.text = DateFormat("dd/MM/yyyy").format(DateTime.parse(
        memberViewModel.memberDetailsRes?.body?.organizationMember?.user
                ?.dateOfBirth ??
            ""));
    _profession = capitalizeFirst(memberViewModel
        .memberDetailsRes?.body?.organizationMember?.user?.profession);
    _gender = stringTogender(memberViewModel
        .memberDetailsRes?.body?.organizationMember?.user?.gender);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final MemberViewModel memberViewModel = ref.watch(memberViewModelProvider);
    return Scaffold(
      backgroundColor: darkBlack,
      appBar: AppBar(
        backgroundColor: darkBlack,
        title: Text(
          "Member Details",
          style: TextStyle(
            color: Colors.white,
            fontSize: Responsive.isMobile(context) ? 16 : 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            if (_image != null) {
              AuthRepoImpl().deletefileFromStorage(_image!);
            }
            context.pop();
          },
          icon: const Icon(Icons.arrow_back_ios, color: kWhite),
        ),
      ),
      body: SingleChildScrollView(
        child: Align(
          child: Form(
            key: _formkey,
            child: PaddedColumn(
              padding: EdgeInsets.symmetric(
                horizontal: Responsive.isDesktop(context) ? 33 : 16,
              ),
              children: [
                gapH25,
                InkWell(
                  overlayColor: WidgetStateProperty.all(Colors.transparent),
                  onTap: () async {
                    HapticFeedback.lightImpact();
                    await openPickImageModalSheet(context).then((value) {
                      if (value != null) {
                        _image = value;
                        setState(() {});
                      }
                    });
                  },
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(3),
                          child: ProfileImg(
                            url: _image ??
                                ((memberViewModel
                                                .memberDetailsRes
                                                ?.body
                                                ?.organizationMember
                                                ?.user
                                                ?.profileImage ==
                                            null ||
                                        memberViewModel
                                                .memberDetailsRes
                                                ?.body
                                                ?.organizationMember
                                                ?.user
                                                ?.profileImage ==
                                            '')
                                    ? damiProfile(
                                        stringTogender(memberViewModel
                                            .memberDetailsRes
                                            ?.body
                                            ?.organizationMember
                                            ?.user
                                            ?.gender),
                                        memberViewModel
                                                .memberDetailsRes
                                                ?.body
                                                ?.organizationMember
                                                ?.user
                                                ?.dateOfBirth ??
                                            "")
                                    : memberViewModel
                                        .memberDetailsRes!
                                        .body!
                                        .organizationMember!
                                        .user!
                                        .profileImage!),
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
                      color: kGrey,
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
                      favorite: const ['+91', 'IN'],
                      textStyle: const TextStyle(
                        color: kWhite,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    // suffixIcon: InkWell(
                    //   onTap: () async {
                    //     await showModalBottomSheet(
                    //       elevation: 10,
                    //       isDismissible: false,
                    //       context: context,
                    //       barrierColor: Colors.transparent,
                    //       builder: (context) {
                    //         return Container(
                    //           width: double.infinity,
                    //           decoration: const BoxDecoration(
                    //             color: lightBlack,
                    //             borderRadius: BorderRadius.only(
                    //               topLeft: Radius.circular(15),
                    //               topRight: Radius.circular(15),
                    //             ),
                    //           ),
                    //           padding: const EdgeInsets.all(10.0),
                    //           child: PaddedColumn(
                    //             padding:
                    //                 const EdgeInsets.symmetric(horizontal: 16),
                    //             mainAxisSize: MainAxisSize.min,
                    //             crossAxisAlignment: CrossAxisAlignment.center,
                    //             mainAxisAlignment:
                    //                 MainAxisAlignment.spaceAround,
                    //             children: <Widget>[
                    //               gapH20,
                    //               const Text(
                    //                 "Your new profile picture",
                    //                 style: TextStyle(
                    //                   fontSize: 16,
                    //                   color: kWhite,
                    //                   fontWeight: FontWeight.w600,
                    //                 ),
                    //               ),
                    //               gapH30,
                    //               TextFormField(
                    //                 autofocus: true,
                    //                 controller: _phoneController,
                    //                 inputFormatters: [
                    //                   LengthLimitingTextInputFormatter(10),
                    //                   FilteringTextInputFormatter.digitsOnly,
                    //                 ],
                    //                 cursorColor: primaryColor,
                    //                 keyboardType: TextInputType.phone,
                    //                 decoration: InputDecoration(
                    //                   prefixIcon: CountryCodePicker(
                    //                     enabled: false,
                    //                     onChanged: (contryCode) {},
                    //                     dialogBackgroundColor: darkBlack,
                    //                     initialSelection: 'IN',
                    //                     favorite: const ['+92', 'IN'],
                    //                     textStyle: const TextStyle(
                    //                       color: kWhite,
                    //                       fontWeight: FontWeight.w600,
                    //                     ),
                    //                   ),
                    //                   suffixIcon: const Column(
                    //                     mainAxisAlignment:
                    //                         MainAxisAlignment.center,
                    //                     children: [
                    //                       Text(
                    //                         "Save   ",
                    //                         style: TextStyle(
                    //                           color: primaryColor,
                    //                           fontSize: 13,
                    //                           fontWeight: FontWeight.w600,
                    //                         ),
                    //                       ),
                    //                     ],
                    //                   ),
                    //                   hintText: 'Enter Your Phone Number',
                    //                   hintStyle: const TextStyle(
                    //                     color: kGrey,
                    //                     fontWeight: FontWeight.w500,
                    //                     fontSize: 14,
                    //                   ),
                    //                   border: OutlineInputBorder(
                    //                     borderRadius: BorderRadius.circular(10),
                    //                   ),
                    //                 ),
                    //                 validator: (value) => value!.isEmpty
                    //                     ? "Phone number can't be empty"
                    //                     : value.length < 10
                    //                         ? "Phone number must be 10 digits"
                    //                         : null,
                    //               ),
                    //               gapH30,
                    //               // SizedBox(
                    //               //   width: double.infinity,
                    //               //   child: FilledBtn(
                    //               //       text: "Save",
                    //               //       radius: 6,
                    //               //       onPressed: () async {}),
                    //               // ),
                    //               // gapH10,
                    //             ],
                    //           ),
                    //         );
                    //       },
                    //     );
                    //   },
                    //   child: const Row(
                    //     mainAxisSize: MainAxisSize.min,
                    //     children: [
                    //       Icon(
                    //         CupertinoIcons.pencil,
                    //         size: 16,
                    //         color: kRed,
                    //       ),
                    //       Text(
                    //         " Change    ",
                    //         style: TextStyle(
                    //             color: kRed,
                    //             fontSize: 13,
                    //             fontWeight: FontWeight.w600,
                    //             decoration: TextDecoration.underline,
                    //             decorationColor: kRed),
                    //       ),
                    //     ],
                    //   ),
                    // ),
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
                // TextFormField(
                //   controller: _phoneController,
                //   inputFormatters: [
                //     LengthLimitingTextInputFormatter(10),
                //     FilteringTextInputFormatter.digitsOnly,
                //   ],
                //   cursorColor: primaryColor,
                //   keyboardType: TextInputType.phone,
                //   decoration: InputDecoration(
                //     prefixIcon: CountryCodePicker(
                //       enabled: false,
                //       onChanged: (contryCode) {},
                //       dialogBackgroundColor: darkBlack,
                //       initialSelection: 'IN',
                //       favorite: const ['+92', 'IN'],
                //       textStyle: const TextStyle(
                //         color: kWhite,
                //         fontWeight: FontWeight.w600,
                //       ),
                //     ),
                //     hintText: 'Enter Your Phone Number',
                //     hintStyle: const TextStyle(
                //       color: kGrey,
                //       fontWeight: FontWeight.w500,
                //       fontSize: 14,
                //     ),
                //     border: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(10),
                //     ),
                //   ),
                //   validator: (value) => value!.isEmpty
                //       ? "Phone number can't be empty"
                //       : value.length < 10
                //           ? "Phone number must be 10 digits"
                //           : null,
                // ),
                // gapH25,
                TextFormField(
                  controller: _dobController,
                  readOnly: true,
                  onTap: () {
                    showDatePicker(
                      context: context,
                      initialDate: _dobController.text == ""
                          ? DateTime.now()
                          : DateFormat('dd/MM/yyyy').parse(_dobController.text),
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now(),
                      onDatePickerModeChange: (value) => print(value),
                    ).then((value) {
                      if (value != null) {
                        _dobController.text =
                            DateFormat('dd/MM/yyyy').format(value);
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
                  initialValue: capitalizeFirst(memberViewModel.memberDetailsRes
                      ?.body?.organizationMember?.user?.profession),
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
                gapH25,
                // Visibility(
                //     visible: memberViewModel.memberDetailsRes?.body
                //             ?.organizationMember?.user?.isVerified ??
                //         true,
                //     child: Column(
                //       children: [
                //         TextFormField(
                //           controller: _otpController,
                //           cursorColor: primaryColor,
                //           keyboardType: TextInputType.number,
                //           textInputAction: TextInputAction.done,
                //           decoration: InputDecoration(
                //             suffixIcon: InkWell(
                //               onTap: () {
                //                 print("tap");
                //               },
                //               child: const SizedBox(
                //                   width: 90,
                //                   child: Center(
                //                       child: Text(
                //                     "GET OTP",
                //                     style: TextStyle(
                //                         color: kBlue,
                //                         fontWeight: FontWeight.bold),
                //                   ))),
                //             ),
                //             hintText: 'Enter Your OTP',
                //             hintStyle: const TextStyle(
                //               color: kGrey,
                //               fontWeight: FontWeight.w500,
                //               fontSize: 14,
                //             ),
                //             border: OutlineInputBorder(
                //               borderRadius: BorderRadius.circular(10),
                //             ),
                //           ),
                //           validator: (value) =>
                //               value!.isEmpty ? "OTP can't be empty" : null,
                //           onFieldSubmitted: (value) {},
                //         ),
                //         gapH25,
                //       ],
                //     )),
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: FilledBtn(
                    text: "Save",
                    isLoading: memberViewModel.lodingeditmember,
                    onPressed: () async {
                      final res = memberViewModel
                          .memberDetailsRes?.body?.organizationMember?.user;
                      if (_formkey.currentState!.validate()) {
                        // verified user or not
                        if (res?.isVerified ?? false) {
                          if (_phoneController.text.trim() !=
                              remove91(res?.phoneNumber)) {
                            await AuthRepoImpl()
                                .sendOtp(SendOtpReq(
                                    phoneNumber:
                                        add91(_phoneController.text.trim()),
                                    forNewUser: true))
                                .then((value) {
                              value.fold((l) {}, (r) async {
                                // verify otp
                                String? pincode;
                                bool isloading = false;
                                await showModalBottomSheet(
                                  elevation: 2,
                                  isDismissible: true,
                                  context: context,
                                  barrierColor: Colors.transparent,
                                  builder: (context) {
                                    return StatefulBuilder(
                                      builder: (BuildContext context,
                                          StateSetter setModalState) {
                                        return Container(
                                          width: double.infinity,
                                          decoration: const BoxDecoration(
                                            color: lightBlack,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(15),
                                            ),
                                          ),
                                          child: PaddedColumn(
                                            padding: EdgeInsets.symmetric(
                                                horizontal:
                                                    Responsive.isMobile(context)
                                                        ? 16
                                                        : 42),
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: <Widget>[
                                              gapH10,
                                              Align(
                                                child: PaddedColumn(
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 35),
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    const Text(
                                                      'Verify OTP to Save Details',
                                                      style: TextStyle(
                                                        color: kWhite,
                                                        fontSize: 26,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                    const SizedBox(height: 20),
                                                    const Text(
                                                      'Enter your phone number to receive a verification code via SMS or Call. This will help us verify your identity and secure your account.',
                                                      style: TextStyle(
                                                        color: kGrey,
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    gapH20,
                                                    Align(
                                                      child: Pinput(
                                                        length: 6,
                                                        defaultPinTheme:
                                                            PinTheme(
                                                          width: 80,
                                                          height: Responsive
                                                                  .isMobile(
                                                                      context)
                                                              ? 60
                                                              : 80,
                                                          textStyle:
                                                              const TextStyle(
                                                            fontSize: 20,
                                                            color: kWhite,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: lightBlack
                                                                .withOpacity(
                                                                    0.5),
                                                            border: Border.all(
                                                                color: kGrey),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        4),
                                                          ),
                                                        ),
                                                        autofocus: true,
                                                        androidSmsAutofillMethod:
                                                            AndroidSmsAutofillMethod
                                                                .smsUserConsentApi,
                                                        autofillHints: const [
                                                          AutofillHints
                                                              .oneTimeCode
                                                        ],
                                                        validator: (s) {
                                                          return s!.length == 6
                                                              ? null
                                                              : 'Pin is incorrect';
                                                        },
                                                        onChanged: (value) {
                                                          pincode = value;
                                                          setModalState(
                                                              () {}); // Update within modal state
                                                        },
                                                        onSubmitted: (value) {},
                                                      ),
                                                    ),
                                                    gapH40,
                                                    SizedBox(
                                                      width: double.infinity,
                                                      height: 60,
                                                      child: FilledBtn(
                                                        text: "Next",
                                                        isLoading: isloading,
                                                        onPressed: () {
                                                          setModalState(() =>
                                                              isloading = true);
                                                          AuthRepoImpl()
                                                              .verifyOtp(VerifyOtpReq(
                                                                  phoneNumber: memberViewModel
                                                                      .memberDetailsRes
                                                                      ?.body
                                                                      ?.organizationMember
                                                                      ?.user
                                                                      ?.phoneNumber,
                                                                  otp: pincode))
                                                              .then((value) =>
                                                                  value.fold(
                                                                      (l) {
                                                                    setModalState(() =>
                                                                        isloading =
                                                                            false);
                                                                  }, (r) {
                                                                    setModalState(() =>
                                                                        isloading =
                                                                            false);
                                                                    context
                                                                        .pop();
                                                                    context
                                                                        .pop();
                                                                    memberViewModel
                                                                        .editmember(
                                                                            context,
                                                                            EditMemberReq(
                                                                              userId: res?.id,
                                                                              name: _nameController.text.trim(),
                                                                              profileImage: _image,
                                                                              phoneNumber: add91(_phoneController.text.trim()),
                                                                              gender: genderToString(_gender),
                                                                              dateOfBirth: DateFormat('dd/MM/yyyy').parse(_dobController.text),
                                                                              profession: lowercaseAll(_profession),
                                                                            ));
                                                                  }));
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                  },
                                );
                              });
                            });
                          } else {
                            memberViewModel
                                .editmember(
                                    context,
                                    EditMemberReq(
                                      userId: res?.id,
                                      name: _nameController.text.trim(),
                                      profileImage: _image,
                                      gender: genderToString(_gender),
                                      dateOfBirth: DateFormat('dd/MM/yyyy')
                                          .parse(_dobController.text),
                                      profession: lowercaseAll(_profession),
                                    ))
                                .then((value) => context.pop());
                          }
                        } else {
                          if (_phoneController.text.trim() !=
                              remove91(res?.phoneNumber)) {
                            await AuthRepoImpl()
                                .sendOtp(SendOtpReq(
                                    phoneNumber:
                                        add91(_phoneController.text.trim()),
                                    forNewUser: true))
                                .then((value) {
                              value.fold((l) {}, (r) {
                                memberViewModel
                                    .editmember(
                                        context,
                                        EditMemberReq(
                                          userId: res?.id,
                                          name: _nameController.text.trim(),
                                          profileImage: _image,
                                          phoneNumber: add91(
                                              _phoneController.text.trim()),
                                          gender: genderToString(_gender),
                                          dateOfBirth: DateFormat('dd/MM/yyyy')
                                              .parse(_dobController.text),
                                          profession: lowercaseAll(_profession),
                                        ))
                                    .then((value) => context.pop());
                              });
                            });
                          } else {
                            memberViewModel
                                .editmember(
                                    context,
                                    EditMemberReq(
                                      userId: res?.id,
                                      name: _nameController.text.trim(),
                                      profileImage: _image,
                                      gender: genderToString(_gender),
                                      dateOfBirth: DateFormat('dd/MM/yyyy')
                                          .parse(_dobController.text),
                                      profession: lowercaseAll(_profession),
                                    ))
                                .then((value) => context.pop());
                          }
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
    );
  }
}
