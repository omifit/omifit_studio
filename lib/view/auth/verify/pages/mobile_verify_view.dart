import 'package:omifit/data/auth/model/login/login_model.dart';
import 'package:omifit/data/auth/model/register/register_model.dart';
import 'package:omifit/utils/parse.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/auth/auth_view_model.dart';
import 'package:pinput/pinput.dart';

class MobileVerifyView extends ConsumerStatefulWidget {
  final bool isLogin;
  const MobileVerifyView(this.isLogin, {super.key});

  @override
  ConsumerState<MobileVerifyView> createState() => _MobileVerifyViewState();
}

class _MobileVerifyViewState extends ConsumerState<MobileVerifyView> {
  String? pinCode;
  @override
  Widget build(BuildContext context) {
    final AuthViewModel authViewModel = ref.watch(authViewModelProvider);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            authViewModel.clearOtpData();
            context.pop();
          },
        ),
      ),
      backgroundColor: darkBlack,
      body: PopScope(
        canPop: true,
        onPopInvoked: (didPop) {
          authViewModel.clearOtpData();
        },
        child: SingleChildScrollView(
          child: PaddedColumn(
            crossAxisAlignment: CrossAxisAlignment.start,
            padding: EdgeInsets.symmetric(vertical: 35, horizontal: 16.w),
            children: [
              Text(
                'Verify Your Phone Number',
                style: TextStyle(
                  color: kWhite,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              gapHR10,
              Text(
                'Enter your phone number to receive a verification code via SMS or Call. This will help us verify your identity and secure your account.',
                style: TextStyle(
                  color: kGrey,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              gapHR30,
              Align(
                child: Pinput(
                  controller: authViewModel.otpCtrl,
                  autofocus: true,
                  length: 6,
                  defaultPinTheme: PinTheme(
                    width: 50,
                    height: 50,
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
                  androidSmsAutofillMethod:
                      AndroidSmsAutofillMethod.smsUserConsentApi,
                  autofillHints: const [AutofillHints.oneTimeCode],
                  onChanged: (value) {
                    pinCode = value;
                    setState(() {});
                  },
                  onCompleted: (value) {
                    pinCode = value;
                    if (pinCode != null && pinCode!.length == 6) {
                      widget.isLogin
                          ? authViewModel.login(
                              LoginReq(
                                phoneNumber:
                                    "+91${authViewModel.phoneSigninCtrl.text}",
                                otp: pinCode,
                              ),
                              context)
                          : authViewModel.register(
                              RegisterReq(
                                  name: authViewModel.nameCtrl.text.trim(),
                                  phoneNumber: phonesendParse(
                                      authViewModel.phoneSignupCtrl.text),
                                  dateOfBirth: authViewModel.dobCtrl.text,
                                  gender: genderSendParse(authViewModel.gender),
                                  profession: professionSendParse(
                                      authViewModel.profession),
                                  otp: pinCode,
                                  address: "testing",
                                  location: const LocationReq(
                                    latitude: 34.4,
                                    longitude: 34.4,
                                  )),
                              context);
                    }
                    setState(() {});
                  },
                  validator: (s) {
                    return s!.length == 6 ? null : 'Pin is incorrect';
                  },
                ),
              ),
              gapHR30,
              SizedBox(
                width: double.infinity,
                height: 45.h,
                child: FilledBtn(
                  text: "Next",
                  isLoading: widget.isLogin
                      ? authViewModel.lodinglogin
                      : authViewModel.lodingregister,
                  onPressed: () {
                    if (pinCode != null && pinCode!.length == 6) {
                      widget.isLogin
                          ? authViewModel.login(
                              LoginReq(
                                phoneNumber:
                                    "+91${authViewModel.phoneSigninCtrl.text}",
                                otp: pinCode,
                              ),
                              context)
                          : authViewModel.register(
                              RegisterReq(
                                  name: authViewModel.nameCtrl.text,
                                  phoneNumber: phonesendParse(
                                      authViewModel.phoneSignupCtrl.text),
                                  dateOfBirth: authViewModel.dobCtrl.text,
                                  gender: genderSendParse(authViewModel.gender),
                                  profession: professionSendParse(
                                      authViewModel.profession),
                                  otp: pinCode,
                                  address: "testing",
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
    );
  }
}
