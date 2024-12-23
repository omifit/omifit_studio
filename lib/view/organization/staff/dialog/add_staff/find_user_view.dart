import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/services.dart';
import 'package:omifit_studio/data/home/staff/model/get_stafflist_model.dart';
import 'package:omifit_studio/utils/utils.dart';
import 'package:omifit_studio/view/organization/staff/staff_view_model.dart';

class FindUserStaffView extends ConsumerStatefulWidget {
  final GetStaffListReq? stafffilter;
  const FindUserStaffView(this.stafffilter, {super.key});
  @override
  ConsumerState<FindUserStaffView> createState() => _FindUserStaffViewState();
}

class _FindUserStaffViewState extends ConsumerState<FindUserStaffView> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final StaffViewModel staffViewModel = ref.watch(staffViewModelProvider);
    return Scaffold(
      backgroundColor: darkBlack,
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: PaddedColumn(
            children: [
              Image.asset(
                'assets/images/addstaff_banner.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              PaddedColumn(
                  mainAxisSize: MainAxisSize.min,
                  padding: EdgeInsets.symmetric(
                      horizontal: Responsive.isMobile(context) ? 16 : 60),
                  children: [
                    gapH32,
                    const Text.rich(TextSpan(
                        text: "Add",
                        style: TextStyle(
                          color: kWhite,
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        ),
                        children: [
                          TextSpan(
                            text: " Staff ",
                            style: TextStyle(
                              color: kRed,
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: "to your Organization",
                            style: TextStyle(
                              color: kWhite,
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ])),
                    gapH52,
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
                        isLoading: staffViewModel.loadingSearchUser,
                        color: kRed,
                        text: "Next",
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            staffViewModel.searchUser(
                              context,
                              "91${_phoneController.text}",
                              widget.stafffilter,
                            );
                          }
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
