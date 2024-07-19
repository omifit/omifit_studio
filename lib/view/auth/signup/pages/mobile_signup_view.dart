import 'package:country_code_picker/country_code_picker.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/services.dart';
import 'package:iconly/iconly.dart';
import 'package:intl/intl.dart';
import 'package:omifit/core/constants.dart';
import 'package:omifit/data/auth/model/send_otp/sendotp_model.dart';
import 'package:omifit/utils/parse.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/auth/auth_view_model.dart';
import 'package:omifit/widget/picker/profession_dropdown.dart';

class MobileSignupView extends ConsumerStatefulWidget {
  const MobileSignupView({super.key});

  @override
  ConsumerState<MobileSignupView> createState() => _MobileSignupViewState();
}

class _MobileSignupViewState extends ConsumerState<MobileSignupView> {
  @override
  Widget build(BuildContext context) {
    final AuthViewModel authViewModel = ref.watch(authViewModelProvider);
    final formKey = GlobalKey<FormState>();
    final FocusNode phoneFocusNode = FocusNode();
    final FocusNode nameFocusNode = FocusNode();
    final FocusNode dobFocusNode = FocusNode();

    return Scaffold(
      appBar: AppBar(),
      backgroundColor: darkBlack,
      bottomNavigationBar: PaddedColumn(
        mainAxisSize: MainAxisSize.min,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        children: [
          PaddedRow(
            padding: EdgeInsets.symmetric(horizontal: 36.w),
            children: [
              const Expanded(
                child: Divider(),
              ),
              Text(
                '    OR   ',
                style: TextStyle(
                  color: kGrey,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Expanded(
                child: Divider(),
              ),
            ],
          ),
          gapHR12,
          Text(
            'You have an account?',
            style: TextStyle(
              color: kWhite,
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          gapHR15,
          SizedBox(
            width: double.infinity,
            height: 40.h,
            child: OutlinedBtn(
              onPressed: () {
                HapticFeedback.lightImpact();
                context.goNamed(AppRoute.signin.name);
                authViewModel.clearSignupData();
              },
              text: "Login",
            ),
          ),
          gapHR15,
        ],
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: PaddedColumn(
            crossAxisAlignment: CrossAxisAlignment.start,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            children: [
              Text(
                'Create an Account',
                style: TextStyle(
                  color: kWhite,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              gapHR10,
              Text(
                'Join now and be part of our exclusive community! Sign up in seconds and gain access to exciting perks, discounts, and special offers.',
                style: TextStyle(
                  color: kGrey,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              gapHR25,
              TextFormField(
                focusNode: nameFocusNode,
                controller: authViewModel.nameCtrl,
                cursorColor: primaryColor,
                onTapOutside: (event) {
                  nameFocusNode.unfocus();
                },
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
              gapHR16,
              TextFormField(
                focusNode: phoneFocusNode,
                controller: authViewModel.phoneSignupCtrl,
                onTapOutside: (event) {
                  phoneFocusNode.unfocus();
                },
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
                validator: (value) => value!.length == 10
                    ? null
                    : "Phone number must be 10 digits",
              ),
              gapHR16,
              TextFormField(
                readOnly: true,
                controller: authViewModel.dobCtrl,
                cursorColor: primaryColor,
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                onTap: () {
                  showDatePicker(
                    context: context,
                    initialDate: authViewModel.dobCtrl.text == ""
                        ? DateTime.now()
                        : DateFormat('MM/dd/yyyy')
                            .parse(authViewModel.dobCtrl.text),
                    firstDate: DateTime(1900),
                    lastDate: DateTime.now(),
                    onDatePickerModeChange: (value) => print(value),
                  ).then((value) {
                    if (value != null) {
                      authViewModel.dobCtrl.text =
                          DateFormat('MM/dd/yyyy').format(value);
                    }
                  });
                },
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
                validator: (value) =>
                    value!.isEmpty ? "Date of Birth can't be empty" : null,
              ),
              gapHR16,
              CustomSlidingSegmentedControl<int>(
                isStretch: true,
                initialValue: authViewModel.gender.index + 1,
                height: 45,
                children: const {
                  1: Text('Male',
                      style: TextStyle(
                        color: kWhite,
                        fontWeight: FontWeight.w600,
                      )),
                  2: Text('Female',
                      style: TextStyle(
                        color: kWhite,
                        fontWeight: FontWeight.w600,
                      )),
                  3: Text('Others',
                      style: TextStyle(
                        color: kWhite,
                        fontWeight: FontWeight.w600,
                      )),
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
              gapHR16,
              ProfessionDropdown(
                ismobile: true,
                onChange: (value) {
                  authViewModel.setProfession(value);
                },
                initialValue: authViewModel.profession,
              ),
              gapHR16,
              SizedBox(
                width: double.infinity,
                height: 42.h,
                child: FilledBtn(
                  text: "Continue",
                  isLoading: authViewModel.lodingsendotp,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
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
            ],
          ),
        ),
      ),
    );
  }
}
