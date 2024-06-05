import 'package:omifit/utils/snacbar.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/auth/auth_view_model.dart';
import 'package:omifit/widget/button/back_btn_widget.dart';
import 'package:pinput/pinput.dart';

class DesktopVerifyView extends ConsumerStatefulWidget {
  const DesktopVerifyView({super.key});

  @override
  ConsumerState<DesktopVerifyView> createState() => _DesktopVerifyViewState();
}

class _DesktopVerifyViewState extends ConsumerState<DesktopVerifyView> {
  String? pinCode;
  @override
  Widget build(BuildContext context) {
    final AuthViewModel authViewModel = ref.read(authViewModelProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackBtn(
          onPressed: () {
            context.pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60,
            ),
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
                      child: Pinput(
                        controller: authViewModel.otpController,
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
                          return s!.length == 4 ? null : 'Pin is incorrect';
                        },
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: FilledBtn(
                        text: "Next",
                        onPressed: () {
                          if (pinCode?.length == 4) {
                            context.goNamed(AppRoute.profile.name);
                          } else {
                            Ksnackbar.warning('Invalid Pin', context);
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
    );
  }
}
