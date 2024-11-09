import 'package:flutter/services.dart';
import 'package:iconly/iconly.dart';
import 'package:intl/intl.dart';
import 'package:omifit/core/constants.dart';
import 'package:omifit/data/auth/auth_repo_impl.dart';
import 'package:omifit/data/organization/model/createorg_model.dart';
import 'package:omifit/utils/file_picker.dart';
import 'package:omifit/utils/parse.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/organization/organization_view_model.dart';
import 'package:omifit/widget/imageicon/profile_img.dart';

class AddOrgDialog extends ConsumerStatefulWidget {
  const AddOrgDialog({
    super.key,
  });
  @override
  ConsumerState<AddOrgDialog> createState() => _AddOrgDialogState();
}

class _AddOrgDialogState extends ConsumerState<AddOrgDialog> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  String? _selectedImage;

  @override
  Widget build(BuildContext context) {
    final OrganizationViewModel organizationViewModel =
        ref.watch(organizationViewModelProvider);
    return Scaffold(
      backgroundColor: darkBlack,
      appBar: AppBar(
        backgroundColor: darkBlack,
        elevation: 0,
        title: const Text(
          "Add Organization",
          style: TextStyle(
            color: kWhite,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            if (_selectedImage != null) {
              AuthRepoImpl().deletefileFromStorage(_selectedImage!);
            }
            context.pop();
          },
          icon: const Icon(Icons.arrow_back_ios, color: kWhite),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: PaddedColumn(
            padding: EdgeInsets.symmetric(
                horizontal: Responsive.isDesktop(context) ? 33 : 16),
            children: [
              gapH25,
              InkWell(
                overlayColor: WidgetStateProperty.all(Colors.transparent),
                onTap: () async {
                  HapticFeedback.lightImpact();
                  await openPickImageModalSheet(context).then((value) {
                    print("uploade-img link - $value");
                    if (value != null) {
                      if (_selectedImage != null) {
                        AuthRepoImpl()
                            .deletefileFromStorage(_selectedImage!)
                            .then((v) {
                          _selectedImage = value;
                          setState(() {});
                        });
                      } else {
                        _selectedImage = value;
                      }
                      setState(() {});
                    }
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
                          url:
                              _selectedImage ?? AppConstants.orgLogoPlaceholder,
                          height: double.infinity,
                          width: double.infinity,
                        ),
                      ),
                    ),
                    const CircleAvatar(
                      backgroundColor: kWhite,
                      radius: 14,
                      child: CircleAvatar(
                        backgroundColor: secondaryColor,
                        radius: 12,
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
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  hintText: 'Enter Your Organization Name',
                  hintStyle: const TextStyle(
                    color: kGrey,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (value) => value!.isEmpty
                    ? 'Please enter your organization name'
                    : null,
              ),
              gapH25,
              TextFormField(
                controller: _dobController,
                readOnly: true,
                onTap: () {
                  showDatePicker(
                    context: context,
                    initialDate: _dobController.text == ""
                        ? DateTime.now()
                        : DateFormat('dd/MM/yyyy').parse(_dobController.text),
                    firstDate: DateTime(1900),
                    lastDate: DateTime.now(),
                    onDatePickerModeChange: (value) => print(value),
                    builder: (BuildContext context, Widget? child) {
                      return Theme(
                        data: ThemeData.dark().copyWith(
                          colorScheme: const ColorScheme.dark(
                            primary: kRed,
                            onPrimary: Colors.white,
                            surface: Color.fromARGB(255, 40, 40, 40),
                            onSurface: Colors.white,
                          ),
                          primaryColor: Colors.red,
                          buttonTheme: const ButtonThemeData(
                              textTheme: ButtonTextTheme.primary),
                        ),
                        child: child!,
                      );
                    },
                  ).then((value) {
                    if (value != null) {
                      _dobController.text =
                          DateFormat('dd/MM/yyyy').format(value);
                    }
                  });
                },
                cursorColor: primaryColor,
                keyboardType: TextInputType.datetime,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  hintText: 'Established Date',
                  hintStyle: const TextStyle(
                    color: kGrey,
                    fontWeight: FontWeight.w400,
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
                    value!.isEmpty ? 'Please enter your date of birth' : null,
              ),
              gapH25,
              SizedBox(
                width: double.infinity,
                height: 50,
                child: FilledBtn(
                  text: "Continue",
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      if (_selectedImage != null) {
                        HapticFeedback.lightImpact();
                        organizationViewModel.createOrg(
                            CreateorgReq(
                              name: _nameController.text.trim(),
                              establishedDate:
                                  stringToDateTime(_dobController.text),
                              organizationImage: _selectedImage,
                            ),
                            context);
                      } else {}
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
