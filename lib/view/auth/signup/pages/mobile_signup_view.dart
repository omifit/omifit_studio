import 'package:country_code_picker/country_code_picker.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/services.dart';
import 'package:omifit/utils/utils.dart';

class MobileSignupView extends StatefulWidget {
  const MobileSignupView({super.key});

  @override
  State<MobileSignupView> createState() => _MobileSignupViewState();
}

class _MobileSignupViewState extends State<MobileSignupView> {
  @override
  Widget build(BuildContext context) {
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
              cursorColor: primaryColor,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
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
              ),
            ),
            gapHR16,
            CustomSlidingSegmentedControl<int>(
              isStretch: true,
              initialValue: 2,
              height: 50,
              children: const {
                1: Text('Male'),
                2: Text('Female'),
                3: Text('Others'),
              },
              decoration: BoxDecoration(
                color: lightBlack,
                borderRadius: BorderRadius.circular(10),
              ),
              thumbDecoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInToLinear,
              onValueChanged: (v) {
                print(v);
              },
            ),
            gapHR26,
            SizedBox(
              width: double.infinity,
              height: 42.h,
              child: FilledBtn(
                text: "Continue",
                onPressed: () {
                  context.goNamed(AppRoute.home.name);
                },
              ),
            ),
            gapH10,
          ],
        ),
      ),
    );
  }
}
