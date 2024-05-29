import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/services.dart';
import 'package:omifit/utils/utils.dart';

class MobileSigninView extends StatefulWidget {
  const MobileSigninView({super.key});

  @override
  State<MobileSigninView> createState() => _MobileSigninViewState();
}

class _MobileSigninViewState extends State<MobileSigninView> {
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
          gapHR15,
          Text(
            'New to Omifit ?',
            style: TextStyle(
              color: kWhite,
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          gapHR15,
          SizedBox(
            width: double.infinity,
            height: 45.h,
            child: OutlinedBtn(
              onPressed: () {
                HapticFeedback.lightImpact();
                context.goNamed(AppRoute.signup.name);
              },
              text: "Create my Account",
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
              'Sign In',
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
            TextField(
              onTapOutside: (event) {
                FocusScope.of(context).unfocus();
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
            gapHR25,
            SizedBox(
              width: double.infinity,
              height: 45.h,
              child: FilledBtn(
                text: "Sign In",
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
