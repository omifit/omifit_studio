import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/services.dart';
import 'package:omifit/data/auth/model/send_otp/sendotp_model.dart';
import 'package:omifit/utils/parse.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/auth/auth_view_model.dart';

class MobileSigninView extends ConsumerStatefulWidget {
  const MobileSigninView({super.key});

  @override
  ConsumerState<MobileSigninView> createState() => _MobileSigninViewState();
}

class _MobileSigninViewState extends ConsumerState<MobileSigninView> {
  final _formKey = GlobalKey<FormState>();
  FocusNode phoneFocusNode = FocusNode();

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
                authViewModel.clearSigninData();
              },
              text: "Create my Account",
            ),
          ),
          gapHR15,
        ],
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
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
              TextFormField(
                focusNode: phoneFocusNode,
                controller: authViewModel.phoneSigninCtrl,
                onTapOutside: (event) {
                  phoneFocusNode.unfocus();
                },
                onFieldSubmitted: (event) {
                  if (_formKey.currentState!.validate()) {
                    authViewModel.sendOtp(
                        SendOtpReq(
                          phoneNumber: phonesendParse(
                              authViewModel.phoneSigninCtrl.text),
                          forOldUser: true,
                          forNewUser: false,
                        ),
                        context);
                  }
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
                validator: (value) => value?.length == 10
                    ? null
                    : "Please enter valid phone number",
              ),
              gapHR25,
              SizedBox(
                width: double.infinity,
                height: 45.h,
                child: FilledBtn(
                  isLoading: authViewModel.lodingsendotp,
                  text: "Sign In",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      authViewModel.sendOtp(
                          SendOtpReq(
                            phoneNumber: phonesendParse(
                                authViewModel.phoneSigninCtrl.text),
                            forOldUser: true,
                            forNewUser: false,
                          ),
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
