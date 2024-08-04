import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/profile/profile_view_model.dart';

class UpdatePhoneView extends ConsumerWidget {
  const UpdatePhoneView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController otpCtrl = TextEditingController();
    final ProfileViewModel profileViewModel =
        ref.watch(profileViewModelProvider);
    return Scaffold(
      backgroundColor: darkBlack,
      appBar: AppBar(
        backgroundColor: darkBlack,
        title: Text(
          "Verify Phone",
          style: TextStyle(
            color: Colors.white,
            fontSize: Responsive.isMobile(context) ? 16 : 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios, color: kWhite),
        ),
      ),
      body: Align(
        child: SizedBox(
          width: Responsive.isMobile(context) ? double.infinity : 600,
          child: PaddedColumn(
            padding: EdgeInsets.symmetric(
              horizontal:
                  Responsive.isMobile(context) || Responsive.isTablet(context)
                      ? 16
                      : 0,
            ),
            children: [
              gapH50,
              TextField(
                controller: otpCtrl,
                cursorColor: primaryColor,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: 'Enter OTP',
                  hintStyle: const TextStyle(
                    color: kGrey,
                    fontWeight: FontWeight.w600,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              gapH25,
              SizedBox(
                width: double.infinity,
                height: 52,
                child: FilledBtn(
                  text: "Continue",
                  isLoading: profileViewModel.lodingvotp,
                  onPressed: () {
                    if (otpCtrl.text.isNotEmpty) {
                      profileViewModel.verifyOtp(
                          profileViewModel.userupReq.phoneNumber ?? "",
                          otpCtrl.text,
                          context);
                    }
                  },
                ),
              ),
              gapH32,
            ],
          ),
        ),
      ),
    );
  }
}
