import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/auth/auth_view_model.dart';
import 'package:pinput/pinput.dart';

class TabletVerifyView extends ConsumerStatefulWidget {
  const TabletVerifyView({super.key});

  @override
  ConsumerState<TabletVerifyView> createState() => _TabletVerifyViewState();
}

class _TabletVerifyViewState extends ConsumerState<TabletVerifyView> {
  String? pinCode;
  @override
  Widget build(BuildContext context) {
    final AuthViewModel authViewModel = ref.read(authViewModelProvider);
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
      body: SingleChildScrollView(
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
                controller:  authViewModel.otpController,
                defaultPinTheme: PinTheme(
                  width: 70,
                  height: 70,
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
            gapHR30,
            SizedBox(
              width: double.infinity,
              height: 60,
              child: FilledBtn(
                text: "Next",
                onPressed: () {
                  context.pushNamed(AppRoute.profile.name);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
