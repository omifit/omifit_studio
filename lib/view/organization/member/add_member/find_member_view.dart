import 'package:country_code_picker/country_code_picker.dart';
import 'package:cupertino_modal_sheet/cupertino_modal_sheet.dart';
import 'package:flutter/services.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/organization/member/add_member/add_member_view.dart';
import 'package:omifit/view/organization/member/member_view_model.dart';

class FindMemberView extends ConsumerStatefulWidget {
  const FindMemberView({super.key});
  @override
  ConsumerState<FindMemberView> createState() => _FindMemberViewState();
}

class _FindMemberViewState extends ConsumerState<FindMemberView> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final MemberViewModel memberViewModel = ref.watch(memberViewModelProvider);
    return Scaffold(
      backgroundColor: darkBlack,
      // appBar: AppBar(
      //   backgroundColor: darkBlack,
      //   title: Text(
      //     "Add Member",
      //     style: TextStyle(
      //       color: Colors.white,
      //       fontSize: Responsive.isMobile(context) ? 16 : 18,
      //       fontWeight: FontWeight.w600,
      //     ),
      //   ),
      //   leading: IconButton(
      //     onPressed: () {
      //       Navigator.of(context).pop();
      //     },
      //     icon: const Icon(Icons.arrow_back_ios, color: kWhite),
      //   ),
      //   actions: [
      //     TextButton(
      //       onPressed: () {
      //         // showCupertinoModalSheet(
      //         //     context: context,
      //         //     builder: (context) => const PlanPickerView());
      //       },
      //       child: const Text(
      //         "Done",
      //         style: TextStyle(
      //           color: primaryColor,
      //           fontSize: 16,
      //           fontWeight: FontWeight.w600,
      //         ),
      //       ),
      //     ),
      //     gapW10
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: PaddedColumn(
            children: [
              Image.asset(
                'assets/images/addmember_banner.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              PaddedColumn(
                  padding: EdgeInsets.symmetric(
                      horizontal: Responsive.isMobile(context) ? 16 : 82),
                  children: [
                    gapH32,
                    const Text.rich(TextSpan(
                        text: "Add Member to your",
                        style: TextStyle(
                          color: kWhite,
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        ),
                        children: [
                          TextSpan(
                            text: " Organization",
                            style: TextStyle(
                              color: kRed,
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ])),
                    gapH72,
                    TextFormField(
                      controller: _phoneController,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(10),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      cursorColor: primaryColor,
                      keyboardType: TextInputType.phone,
                      textInputAction: TextInputAction.next,
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
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (value) => value!.isEmpty
                          ? "Phone number can't be empty"
                          : value.length < 10
                              ? "Phone number must be 10 digits"
                              : null,
                    ),
                    gapH25,
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: FilledBtn(
                        color: kRed,
                        text: "Next",
                        onPressed: () {
                          showCupertinoModalSheet(
                            context: context,
                            builder: (_) => AddMemberView(
                              phonenumber: _phoneController.text.trim(),
                            ),
                          );
                        },
                      ),
                    ),
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
