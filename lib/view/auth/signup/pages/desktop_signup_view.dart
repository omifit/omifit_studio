import 'package:country_code_picker/country_code_picker.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/services.dart';
import 'package:iconly/iconly.dart';
import 'package:intl/intl.dart';
import 'package:omifit/core/core.dart';
import 'package:omifit/data/auth/model/send_otp/sendotp_model.dart';
import 'package:omifit/utils/parse.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/auth/auth_view_model.dart';
import 'package:omifit/widget/picker/profession_dropdown.dart';

class DesktopSignupView extends ConsumerStatefulWidget {
  const DesktopSignupView({super.key});

  @override
  ConsumerState<DesktopSignupView> createState() => _DesktopSignupViewState();
}

class _DesktopSignupViewState extends ConsumerState<DesktopSignupView> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final AuthViewModel authViewModel = ref.watch(authViewModelProvider);
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              gapH30,
              Align(
                child: Container(
                  width: 723,
                  decoration: const BoxDecoration(
                    color: darkBlack,
                    borderRadius: BorderRadius.all(Radius.circular(36)),
                  ),
                  child: PaddedColumn(
                    padding: const EdgeInsets.symmetric(
                        vertical: 35, horizontal: 30),
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Create an Account',
                        style: TextStyle(
                          color: kWhite,
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      gapH20,
                      const Text(
                        'Join now and be part of our exclusive community! Sign up in seconds and gain access to exciting perks, discounts, and special offers.',
                        style: TextStyle(
                          color: kGrey,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      gapH25,
                      TextFormField(
                        controller: authViewModel.nameCtrl,
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
                        validator: (value) =>
                            value!.isEmpty ? "Name can't be empty" : null,
                      ),
                      gapH25,
                      TextFormField(
                        controller: authViewModel.phoneSignupCtrl,
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
                          hintText: 'Enter Your Phone Number',
                          hintStyle: const TextStyle(
                            color: kGrey,
                            fontWeight: FontWeight.w600,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (value) => value!.length == 10
                            ? null
                            : "Phone number must be 10 digits",
                      ),
                      gapH25,
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: authViewModel.dobCtrl,
                              readOnly: true,
                              onTap: () {
                                showDatePicker(
                                  context: context,
                                  initialDate: authViewModel.dobCtrl.text == ""
                                      ? DateTime.now()
                                      : DateFormat('MM/dd/yyyy')
                                          .parse(authViewModel.dobCtrl.text),
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime.now(),
                                  onDatePickerModeChange: (value) =>
                                      print(value),
                                ).then((value) {
                                  print(value);
                                  if (value != null) {
                                    authViewModel.dobCtrl.text = 
                                        DateFormat('MM/dd/yyyy').format(value);
                                  }
                                });
                              },
                              validator: (value) => value!.isEmpty
                                  ? "Date of Birth can't be empty"
                                  : null,
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
                                onChange: (value) {
                                  authViewModel.setProfession(value);
                                },
                                initialValue: authViewModel.profession),
                          )
                        ],
                      ),
                      gapH25,
                      CustomSlidingSegmentedControl<int>(
                        isStretch: true,
                        initialValue: authViewModel.gender.index + 1,
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
                          authViewModel.setGender(
                            v == 1
                                ? Gender.male
                                : v == 2
                                    ? Gender.female
                                    : Gender.others,
                          );
                        },
                      ),
                      gapH25,
                      SizedBox(
                        width: double.infinity,
                        height: 55,
                        child: FilledBtn(
                          isLoading: authViewModel.lodingsendotp,
                          text: "Continue",
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              authViewModel.sendOtp(
                                  SendOtpReq(
                                      phoneNumber: phonesendParse(
                                          authViewModel.phoneSignupCtrl.text),
                                      forNewUser: true,
                                      forOldUser: false),
                                  context);
                            }
                          },
                        ),
                      ),
                      gapH90,
                      Column(
                        children: [
                          const PaddedRow(
                            padding: EdgeInsets.symmetric(horizontal: 50),
                            children: [
                              Expanded(
                                child: Divider(
                                  color: kGrey,
                                ),
                              ),
                              Text(
                                '    OR   ',
                                style: TextStyle(
                                  color: kGrey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Expanded(
                                child: Divider(
                                  color: kGrey,
                                ),
                              ),
                            ],
                          ),
                          gapH25,
                          const Text(
                            'Already have an account?',
                            style: TextStyle(
                              color: kWhite,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 60,
                            child: OutlinedBtn(
                              text: 'Login',
                              onPressed: () {
                                authViewModel.clearSignupData();
                                context.goNamed(AppRoute.signin.name);
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
