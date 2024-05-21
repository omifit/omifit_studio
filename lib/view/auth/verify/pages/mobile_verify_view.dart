import 'package:omifit/utils/utils.dart';
import 'package:pinput/pinput.dart';

class MobileVerifyView extends StatefulWidget {
  const MobileVerifyView({super.key});

  @override
  State<MobileVerifyView> createState() => _MobileVerifyViewState();
}

class _MobileVerifyViewState extends State<MobileVerifyView> {
  String? pinCode;
  @override
  Widget build(BuildContext context) {
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
              height: 45.h,
              child: FilledBtn(
                text: "Next",
                onPressed: () {
                  context.goNamed(AppRoute.home.name);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
