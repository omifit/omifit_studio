import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/profile/profile_view_model.dart';

class UpdatePhoneView extends ConsumerStatefulWidget {
  const UpdatePhoneView({super.key});
  @override
  ConsumerState<UpdatePhoneView> createState() => _UpdatePhoneViewState();
}

class _UpdatePhoneViewState extends ConsumerState<UpdatePhoneView> {
  final formkey = GlobalKey<FormState>();
  final TextEditingController otpCtrl = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final FocusNode otpFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
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
      body: Form(
        key: formkey,
        child: Align(
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
                TextFormField(
                  controller: otpCtrl,
                  onTapOutside: (event) {
                    otpFocus.unfocus();
                  },
                  cursorColor: primaryColor,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    hintText: 'Enter Your OTP',
                    hintStyle: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) =>
                      value!.isEmpty ? "OTP can't be empty" : null,
                  onFieldSubmitted: (value) {
                    if (formkey.currentState!.validate()) {
                      profileViewModel.verifyOtp(
                          profileViewModel.userupReq.phoneNumber ?? "",
                          otpCtrl.text,
                          context);
                    }
                  },
                ),
                gapH25,
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: FilledBtn(
                    text: "Continue",
                    isLoading: profileViewModel.lodingvotp,
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        profileViewModel.verifyOtp(
                          profileViewModel.userupReq.phoneNumber ?? "",
                          otpCtrl.text,
                          context,
                        );
                      }
                    },
                  ),
                ),
                gapH32,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
