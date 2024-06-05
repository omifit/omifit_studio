import 'package:country_code_picker/country_code_picker.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/services.dart';
import 'package:iconly/iconly.dart';
import 'package:intl/intl.dart';
import 'package:omifit/core/core.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/auth/auth_view_model.dart';

class DesktopSignupView extends ConsumerStatefulWidget {
  const DesktopSignupView({super.key});

  @override
  ConsumerState<DesktopSignupView> createState() => _DesktopSignupViewState();
}

class _DesktopSignupViewState extends ConsumerState<DesktopSignupView> {
  @override
  Widget build(BuildContext context) {
    final AuthViewModel authViewModel = ref.watch(authViewModelProvider);
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Align(
              child: Container(
                width: 723,
                decoration: const BoxDecoration(
                  color: darkBlack,
                  borderRadius: BorderRadius.all(Radius.circular(36)),
                ),
                child: PaddedColumn(
                  padding:
                      const EdgeInsets.symmetric(vertical: 35, horizontal: 30),
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Create an Account',
                      style: TextStyle(
                        color: kWhite,
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Join now and be part of our exclusive community! Sign up in seconds and gain access to exciting perks, discounts, and special offers.',
                      style: TextStyle(
                        color: kGrey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    gapH25,
                    TextField(
                      controller: authViewModel.nameSignupController,
                      cursorColor: primaryColor,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: 'Enter Your Name',
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
                    TextField(
                      controller: authViewModel.phoneSignupController,
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
                    ),
                    gapH25,
                    TextField(
                      controller: authViewModel.dobSignupController,
                      readOnly: true,
                      onTap: () {
                        showDatePicker(
                          context: context,
                          initialDate:
                              authViewModel.dobSignupController.text == ""
                                  ? DateTime.now()
                                  : DateFormat('MM/dd/yyyy').parse(
                                      authViewModel.dobSignupController.text),
                          firstDate: DateTime(1900),
                          lastDate: DateTime.now(),
                          onDatePickerModeChange: (value) => print(value),
                        ).then((value) {
                          if (value != null) {
                            authViewModel.dobSignupController.text =
                                DateFormat('MM/dd/yyyy').format(value);
                          }
                        });
                      },
                      cursorColor: primaryColor,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: 'Enter Your Date of Birth',
                        hintStyle: const TextStyle(
                          color: kGrey,
                          fontWeight: FontWeight.w600,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        suffixIcon: const Icon(
                          IconlyBold.calendar,
                          color: kGrey,
                        ),
                      ),
                    ),
                    gapH25,
                    CustomSlidingSegmentedControl<int>(
                      isStretch: true,
                      initialValue: authViewModel.genderSignup.index + 1,
                      height: 45,
                      children: const {
                        1: Text('Male'),
                        2: Text('Female'),
                        3: Text('Others'),
                      },
                      decoration: BoxDecoration(
                        color: lightBlack,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      thumbDecoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInToLinear,
                      onValueChanged: (v) {
                        authViewModel.setGender(
                          v == 1
                              ? Gender.male
                              : v == 2
                                  ? Gender.female
                                  : Gender.others,
                        );
                      },
                    ),
                    gapH36,
                    TextField(
                      controller: authViewModel.locationSignupController,
                      cursorColor: primaryColor,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: 'Enter Your Location',
                        hintStyle: const TextStyle(
                          color: kGrey,
                          fontWeight: FontWeight.w600,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onChanged: (value) {
                        authViewModel.searchLocation(value);
                      },
                    ),
                    gapH10,
                    if (authViewModel.locationSignupController.text != "" && authViewModel.locationSearch.isNotEmpty)
                      SizedBox(
                        height: 225,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: authViewModel.locationSearch.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              visualDensity: VisualDensity.compact,
                              contentPadding: EdgeInsets.zero,
                              leading: const Icon(
                                Icons.location_on_outlined,
                                size: 18,
                                color: kRed,
                              ),
                              title: Text(
                                authViewModel.locationSearch[index],
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: kGrey,
                                ),
                              ),
                              onTap: () {
                                authViewModel.locationSignupController.text =
                                    authViewModel.locationSearch[index];
                                authViewModel.clearLocationSearch();
                              },
                            );
                          },
                        ),
                      ),
                    gapH10,
                    SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: FilledBtn(
                        text: "Continue",
                        onPressed: () {
                          context.pushNamed(AppRoute.verify.name);
                        },
                      ),
                    ),
                    gapH90,
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
                          'Already have an account?',
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
                            text: 'Login',
                            onPressed: () {
                              context.goNamed(AppRoute.signin.name);
                            },
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
    );
  }
}
