import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/services.dart';
import 'package:omifit/data/auth/model/send_otp/sendotp_model.dart';
import 'package:omifit/utils/parse.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/auth/auth_view_model.dart';

class DesktopSigninView extends ConsumerStatefulWidget {
  const DesktopSigninView({super.key});

  @override
  ConsumerState<DesktopSigninView> createState() => _DesktopSigninViewState();
}

class _DesktopSigninViewState extends ConsumerState<DesktopSigninView> {
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
              const SizedBox(
                height: 60,
              ),
              Align(
                child: Container(
                  height: 828,
                  width: 723,
                  decoration: const BoxDecoration(
                    color: darkBlack,
                    borderRadius: BorderRadius.all(Radius.circular(36)),
                  ),
                  child: PaddedColumn(
                    padding: const EdgeInsets.symmetric(
                      vertical: 35,
                      horizontal: 30,
                    ),
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Sign In',
                        style: TextStyle(
                          color: kWhite,
                          fontSize: 30,
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
                      gapH40,
                      TextFormField(
                        controller: authViewModel.phoneSigninCtrl,
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
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          hintText: 'Enter Your Phone Number',
                          hintStyle: const TextStyle(
                            color: kGrey,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: kRed,
                            ),
                          ),
                          errorStyle: const TextStyle(
                            color: kRed,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        validator: (value) => value?.length == 10
                            ? null
                            : "Please enter valid phone number",
                        onFieldSubmitted: (value) {
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
                      gapH40,
                      //* === btn
                      SizedBox(
                        width: double.infinity,
                        height: 60,
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
                      const Spacer(),
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
                          const SizedBox(
                            height: 25,
                          ),
                          const Text(
                            'New to Omifit ?',
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
                              onPressed: () {
                                context.goNamed(AppRoute.signup.name);
                                authViewModel.clearSigninData();
                              },
                              text: "Create my Account",
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
