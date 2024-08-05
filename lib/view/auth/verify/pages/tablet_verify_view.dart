import 'package:omifit/data/auth/model/login/login_model.dart';
import 'package:omifit/data/auth/model/register/register_model.dart';
import 'package:omifit/utils/parse.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/auth/auth_view_model.dart';
import 'package:pinput/pinput.dart';

class TabletVerifyView extends ConsumerStatefulWidget {
  final bool isLogin;
  const TabletVerifyView(this.isLogin, {super.key});

  @override
  ConsumerState<TabletVerifyView> createState() => _TabletVerifyViewState();
}

class _TabletVerifyViewState extends ConsumerState<TabletVerifyView> {
  String? pinCode;
  @override
  Widget build(BuildContext context) {
    final AuthViewModel authViewModel = ref.watch(authViewModelProvider);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            context.pop();
          },
        ),
      ),
      backgroundColor: darkBlack,
      body: PopScope(
        canPop: true,
        onPopInvoked: (value) {
          authViewModel.clearOtpData();
        },
        child: SingleChildScrollView(
          child: PaddedColumn(
            crossAxisAlignment: CrossAxisAlignment.start,
            padding: EdgeInsets.symmetric(vertical: 35, horizontal: 16.w),
            children: [
              const Text(
                'Verify Your Phone Number',
                style: TextStyle(
                  color: kWhite,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              gapHR10,
              const Text(
                'Enter your phone number to receive a verification code via SMS or Call. This will help us verify your identity and secure your account.',
                style: TextStyle(
                  color: kGrey,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              gapHR30,
              Align(
                child: Pinput(
                  length: 6,
                  controller: authViewModel.otpCtrl,
                  defaultPinTheme: PinTheme(
                    width: 60,
                    height: 60,
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
                  validator: (s) {
                    return s!.length == 6 ? null : 'Pin is incorrect';
                  },
                  autofocus: true,
                  androidSmsAutofillMethod:
                      AndroidSmsAutofillMethod.smsUserConsentApi,
                  autofillHints: const [AutofillHints.oneTimeCode],
                  onChanged: (value) {
                    pinCode = value;
                    setState(() {});
                  },
                ),
              ),
              gapHR30,
              SizedBox(
                width: double.infinity,
                height: 60,
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
