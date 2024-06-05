import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/services.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/auth/auth_view_model.dart';

class TabletSigninView extends ConsumerStatefulWidget {
  const TabletSigninView({super.key});

  @override
  ConsumerState<TabletSigninView> createState() => _TabletSigninViewState();
}

class _TabletSigninViewState extends ConsumerState<TabletSigninView> {
  @override
  Widget build(BuildContext context) {
    final AuthViewModel authViewModel = ref.watch(authViewModelProvider);
    return Scaffold(
      backgroundColor: darkBlack,
      bottomNavigationBar: PaddedColumn(
        mainAxisSize: MainAxisSize.min,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        children: [
          PaddedRow(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            children: [
              const Expanded(
                child: Divider(
                  color: kGrey,
                ),
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
                child: Divider(
                  color: kGrey,
                ),
              ),
            ],
          ),
          gapH26,
          const Text(
            'New to Omifit ?',
            style: TextStyle(
              color: kWhite,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          gapH26,
          SizedBox(
            width: double.infinity,
            height: 60,
            child: OutlinedBtn(
              onPressed: () {
                context.goNamed(AppRoute.signup.name);
              },
              text: "Create my Account",
            ),
          ),
          gapH26,
        ],
      ),
      body: SingleChildScrollView(
        child: PaddedColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          padding: EdgeInsets.symmetric(vertical: 35, horizontal: 16.w),
          children: [
            const Text(
              'Sign In',
              style: TextStyle(
                color: kWhite,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            gapHR10,
            const Text(
              'Join now and be part of our exclusive community! Sign up in seconds and gain access to exciting perks, discounts, and special offers.',
              style: TextStyle(
                color: kGrey,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            gapHR30,
            TextField(
              controller: authViewModel.phoneSigninController,
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
            ),
            gapHR30,
            SizedBox(
              width: double.infinity,
              height: 60,
              child: FilledBtn(
                text: "Sign In",
                onPressed: () {
                   
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
