import 'package:country_code_picker/country_code_picker.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/services.dart';
import 'package:iconly/iconly.dart';
import 'package:intl/intl.dart';
import 'package:omifit/core/constants.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/auth/auth_view_model.dart';

class MobileSignupView extends ConsumerStatefulWidget {
  const MobileSignupView({super.key});

  @override
  ConsumerState<MobileSignupView> createState() => _MobileSignupViewState();
}

class _MobileSignupViewState extends ConsumerState<MobileSignupView> {
  @override
  Widget build(BuildContext context) {
    final AuthViewModel authViewModel = ref.watch(authViewModelProvider);
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
              },
              text: "Login",
            ),
          ),
          gapHR15,
        ],
      ),
      body: SingleChildScrollView(
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
                fontSize: 10.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            gapHR25,
            TextField(
              controller: authViewModel.nameSignupController,
              cursorColor: primaryColor,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                hintText: 'Enter Your Name',
                hintStyle: TextStyle(
                  color: kGrey,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            gapHR16,
            TextField(
              controller: authViewModel.phoneSignupController,
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
                  textStyle: TextStyle(
                    color: kWhite,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                hintText: 'Enter Your Phone Number',
                hintStyle: TextStyle(
                  color: kGrey,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            gapHR16,
            TextField(
              readOnly: true,
              controller: authViewModel.dobSignupController,
              cursorColor: primaryColor,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              onTap: () {
                showDatePicker(
                  context: context,
                  initialDate: authViewModel.dobSignupController.text == ""
                      ? DateTime.now()
                      : DateFormat('MM/dd/yyyy')
                          .parse(authViewModel.dobSignupController.text),
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now(),
                  onDatePickerModeChange: (value) => print(value),
                ).then((value) {
                  if (value != null) {
                    authViewModel.dobSignupController.text =
                        DateFormat('MM/dd/yyyy').format(value);
                  }
                });
              },
              decoration: InputDecoration(
                hintText: 'Enter Your Date of Birth',
                hintStyle: TextStyle(
                  color: kGrey,
                  fontSize: 12.sp,
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
            gapHR16,
            CustomSlidingSegmentedControl<int>(
              isStretch: true,
              initialValue: authViewModel.genderSignup.index + 1,
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
            gapHR16,
            TextField(
              controller: authViewModel.locationSignupController,
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
                authViewModel.searchLocation(value);
              },
            ),
            gapH10,
            if (authViewModel.locationSignupController.text != "" &&
                authViewModel.locationSearch.isNotEmpty)
              SizedBox(
                height: 225,
                child: ListView.builder(
                  physics:  const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: authViewModel.locationSearch.length,
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
                        authViewModel.locationSearch[index],
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: kGrey,
                        ),
                      ),
                      onTap: () {
                        authViewModel.locationSignupController.text =
                            authViewModel.locationSearch[index];
                        authViewModel.clearLocationSearch();
                      },
                    );
                  },
                ),
              ),
            gapHR12,
            SizedBox(
              width: double.infinity,
              height: 42.h,
              child: FilledBtn(
                text: "Continue",
                onPressed: () {
                  context.pushNamed(AppRoute.verify.name);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
