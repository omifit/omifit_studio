import 'package:country_code_picker/country_code_picker.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:iconly/iconly.dart';
import 'package:intl/intl.dart';
import 'package:omifit/core/constants.dart';
import 'package:omifit/data/home/member/model/add_member_model.dart';
import 'package:omifit/utils/file_picker.dart';
import 'package:omifit/utils/parse.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/organization/member/member_view_model.dart';
import 'package:omifit/widget/imageicon/profile_img.dart';
import 'package:omifit/widget/picker/profession_dropdown.dart';

class AddMemberView extends ConsumerStatefulWidget {
  final String phonenumber;
  const AddMemberView({super.key, required this.phonenumber});
  @override
  ConsumerState<AddMemberView> createState() => _AddMemberViewState();
}

class _AddMemberViewState extends ConsumerState<AddMemberView> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  Gender _gender = Gender.male;
  String _profession = "Student";
  String? _image;

  @override
  void initState() {
    _phoneController.text = widget.phonenumber;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final MemberViewModel memberViewModel = ref.watch(memberViewModelProvider);
    return Scaffold(
      backgroundColor: darkBlack,
      appBar: AppBar(
        backgroundColor: darkBlack,
        title: Text(
          "Add Member",
          style: TextStyle(
            color: Colors.white,
            fontSize: Responsive.isMobile(context) ? 16 : 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios, color: kWhite),
        ),
        actions: [
          TextButton(
            onPressed: () {
              memberViewModel.createmember(
                  context,
                  AddMemberReq(
                    name: _nameController.text.trim(),
                    phoneNumber: add91(_phoneController.text),
                    dateOfBirth: _dobController.text,
                    gender: genderToString(_gender),
                    profession: lowercaseAll(_profession),
                  ));
            },
            child: memberViewModel.lodingaddmember
                ? const CupertinoActivityIndicator()
                : const Text(
                    "Done",
                    style: TextStyle(
                      color: kRed,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
          ),
          gapW10
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: PaddedColumn(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            children: [
              gapH35,
              InkWell(
                overlayColor: WidgetStateProperty.all(Colors.transparent),
                onTap: () async {
                  HapticFeedback.lightImpact();
                  await openPickImageModalSheet(context).then((value) {
                    print("uploade-img link - $value");
                  });
                },
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(3),
                        child: ProfileImg(
                          url: _image ??
                              damiProfile(_gender, _dobController.text),
                          height: double.infinity,
                          width: double.infinity,
                        ),
                      ),
                    ),
                    const CircleAvatar(
                      backgroundColor: kWhite,
                      radius: 16,
                      child: CircleAvatar(
                        backgroundColor: kRed,
                        radius: 14,
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              gapH25,
              TextFormField(
                controller: _nameController,
                cursorColor: primaryColor,
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: 'Enter Your Name',
                  hintStyle: const TextStyle(
                    color: kGrey,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (value) =>
                    value!.isEmpty ? "Name can't be empty" : null,
              ),
              gapH25,
              TextFormField(
                readOnly: true,
                // enabled: false,
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
              if (ResponsiveMember.isMobile(context))
                Column(
                  children: [
                    TextFormField(
                      controller: _dobController,
                      readOnly: true,
                      onTap: () {
                        showDatePicker(
                          context: context,
                          initialDatePickerMode: DatePickerMode.year,
                          initialDate: _dobController.text == ""
                              ? DateTime.now()
                              : DateFormat('MM/dd/yyyy')
                                  .parse(_dobController.text),
                          firstDate: DateTime(1900),
                          lastDate: DateTime.now(),
                          onDatePickerModeChange: (value) => print(value),
                        ).then((value) {
                          if (value != null) {
                            _dobController.text =
                                DateFormat('dd/MM/yyyy').format(value);
                            setState(() {});
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
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        suffixIcon: const Icon(
                          IconlyBold.calendar,
                          color: kGrey,
                        ),
                      ),
                      validator: (value) =>
                          value!.isEmpty ? "DOB can't be empty" : null,
                    ),
                    gapH25,
                    ProfessionDropdown(
                      onChange: (value) {
                        _profession = value;
                        setState(() {});
                      },
                      initialValue: _profession,
                    ),
                  ],
                )
              else
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _dobController,
                        readOnly: true,
                        onTap: () {
                          showDatePicker(
                            context: context,
                            initialDate: _dobController.text == ""
                                ? DateTime.now()
                                : DateFormat('MM/dd/yyyy')
                                    .parse(_dobController.text),
                            firstDate: DateTime(1900),
                            lastDate: DateTime.now(),
                            onDatePickerModeChange: (value) => print(value),
                          ).then((value) {
                            if (value != null) {
                              _dobController.text =
                                  DateFormat('dd/MM/yyyy').format(value);
                              setState(() {});
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
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          suffixIcon: const Icon(
                            IconlyBold.calendar,
                            color: kGrey,
                          ),
                        ),
                        validator: (value) =>
                            value!.isEmpty ? "DOB can't be empty" : null,
                      ),
                    ),
                    gapW10,
                    Expanded(
                      child: ProfessionDropdown(
                        onChange: (value) {
                          _profession = value;
                          setState(() {});
                        },
                        initialValue: _profession,
                      ),
                    ),
                  ],
                ),
              gapH25,
              SizedBox(
                width: double.infinity,
                height: 45,
                child: CustomSlidingSegmentedControl<int>(
                  isStretch: true,
                  innerPadding: const EdgeInsets.symmetric(
                    horizontal: 4,
                    vertical: 4,
                  ),
                  initialValue: _gender.index + 1,
                  children: const {
                    1: Text('Male'),
                    2: Text('Female'),
                    3: Text('Others'),
                  },
                  decoration: BoxDecoration(
                    color: lightBlack,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  thumbDecoration: BoxDecoration(
                    color: darkBlack,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInToLinear,
                  onValueChanged: (v) {
                    _gender = (v == 1)
                        ? Gender.male
                        : (v == 2)
                            ? Gender.female
                            : Gender.others;
                    setState(() {});
                  },
                ),
              ),
              gapH46,
            ],
          ),
        ),
      ),
    );
  }
}
