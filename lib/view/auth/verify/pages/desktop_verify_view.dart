import 'package:omifit/data/auth/model/login/login_model.dart';
import 'package:omifit/data/auth/model/register/register_model.dart';
import 'package:omifit/utils/parse.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/auth/auth_view_model.dart';
import 'package:omifit/widget/button/back_btn_widget.dart';
import 'package:pinput/pinput.dart';

class DesktopVerifyView extends ConsumerStatefulWidget {
  final bool isLogin;
  const DesktopVerifyView(this.isLogin, {super.key});

  @override
  ConsumerState<DesktopVerifyView> createState() => _DesktopVerifyViewState();
}

class _DesktopVerifyViewState extends ConsumerState<DesktopVerifyView> {
  String? pinCode;
  @override
  Widget build(BuildContext context) {
    final AuthViewModel authViewModel = ref.watch(authViewModelProvider);
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackBtn(
          onPressed: () {
            authViewModel.clearOtpData();
            context.pop();
          },
        ),
      ),
      body: PopScope(
        canPop: true,
        onPopInvoked: (value) {
          authViewModel.clearOtpData();
        },
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              gapH60,
              Align(
                child: Container(
                  height: 520,
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
                        'Verify Your Phone Number',
                        style: TextStyle(
                          color: kWhite,
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Enter your phone number to receive a verification code via SMS or Call. This will help us verify your identity and secure your account.',
                        style: TextStyle(
                          color: kGrey,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      gapH40,
                      Align(
                        child: Form(
                          key: formKey,
                          child: Pinput(
                            length: 6,
                            controller: authViewModel.otpCtrl,
                            defaultPinTheme: PinTheme(
                              width: 80,
                              height: 80,
                              textStyle: const TextStyle(
                                fontSize: 20,
                                color: kWhite,
                                fontWeight: FontWeight.w600,
                              ),
                              decoration: BoxDecoration(
                                color: lightBlack.withOpacity(0.5),
                                border: Border.all(
                                  color: kGrey,
                                ),
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            autofocus: true,
                            androidSmsAutofillMethod:
                                AndroidSmsAutofillMethod.smsUserConsentApi,
                            autofillHints: const [AutofillHints.oneTimeCode],
                            onChanged: (value) {
                              pinCode = value;
                              setState(() {});
                            },
                            validator: (s) {
                              return s!.length == 6 ? null : 'Pin is incorrect';
                            },
                          ),
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: FilledBtn(
                          text: "Next",
                          isLoading: widget.isLogin
                              ? authViewModel.lodinglogin
                              : authViewModel.lodingregister,
                          onPressed: () {
                            print(authViewModel.gender.name);
                            if (formKey.currentState!.validate()) {
                              widget.isLogin
                                  ? authViewModel.login(
                                      LoginReq(
                                        phoneNumber: phonesendParse(
                                            authViewModel.phoneSigninCtrl.text),
                                        otp: pinCode,
                                      ),
                                      context)
                                  : authViewModel.register(
                                      RegisterReq(
                                          name: authViewModel.nameCtrl.text,
                                          phoneNumber: phonesendParse(
                                              authViewModel
                                                  .phoneSignupCtrl.text),
                                          dateOfBirth:
                                              authViewModel.dobCtrl.text,
                                          gender: genderSendParse(
                                              authViewModel.gender),
                                          profession: professionSendParse(
                                              authViewModel.profession),
                                          otp: pinCode,
                                          address: "testing",
                                          profileImage: damiProfile(
                                              authViewModel.gender,
                                              authViewModel.dobCtrl.text),
                                          location: const LocationReq(
                                            latitude: 34.4,
                                            longitude: 34.4,
                                          )),
                                      context);
                            }
                          },
                        ),
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
