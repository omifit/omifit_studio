import 'package:flutter/services.dart';
import 'package:iconly/iconly.dart';
import 'package:intl/intl.dart';
import 'package:omifit/data/organization/model/createorg_model.dart';
import 'package:omifit/utils/file_picker.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/organization/organization_view_model.dart';
import 'package:omifit/widget/imageicon/profile_img.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class AddOrgDialog {
  static WoltModalSheetPage build(BuildContext context) {
    return WoltModalSheetPage(
      backgroundColor: darkBlack,
      surfaceTintColor: lightBlack,
      hasSabGradient: false,
      isTopBarLayerAlwaysVisible: true,
      topBar: PaddedRow(
        padding: EdgeInsets.symmetric(
            horizontal: Responsive.isMobile(context) ? 16 : 20),
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              "",
              style: TextStyle(
                color: Colors.white,
                fontSize: Responsive.isMobile(context) ? 0 : 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
      trailingNavBarWidget: Padding(
        padding: EdgeInsets.only(right: Responsive.isMobile(context) ? 16 : 22),
        child: IconButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(kyellowbg),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.close, color: primaryColor),
        ),
      ),
      child: StatefulBuilder(
        builder: (BuildContext context, setState) {
          return const AddOrgDialogWidget();
        },
      ),
    );
  }
}

class AddOrgDialogWidget extends ConsumerStatefulWidget {
  const AddOrgDialogWidget({
    super.key,
  });
  @override
  ConsumerState<AddOrgDialogWidget> createState() => _AddOrgDialogWidgetState();
}

class _AddOrgDialogWidgetState extends ConsumerState<AddOrgDialogWidget> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final OrganizationViewModel organizationViewModel =
        ref.watch(organizationViewModelProvider);
    return SingleChildScrollView(
      child: Form(
        key: _formkey,
        child: PaddedColumn(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          children: [
            gapH25,
            InkWell(
              overlayColor: WidgetStateProperty.all(Colors.transparent),
              onTap: () async {
                HapticFeedback.lightImpact();
                await openPickImageModalSheet(context).then((value) {
                  print("uploade-img link - $value");
                });
              },
              child: const Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(3),
                      child: ProfileImg(
                        url: "https://i.imgur.com/UnWWlu3.png",
                        height: double.infinity,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  CircleAvatar(
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
              validator: (value) =>
                  value!.isEmpty ? 'Please enter your organization name' : null,
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
                      : DateFormat('MM/dd/yyyy').parse(_dobController.text),
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now(),
                  onDatePickerModeChange: (value) => print(value),
                ).then((value) {
                  if (value != null) {
                    _dobController.text =
                        DateFormat('MM/dd/yyyy').format(value);
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
                    HapticFeedback.lightImpact();
                    organizationViewModel.createOrg(
                        CreateorgReq(
                            name: _nameController.text,
                            establishedDate: _dobController.text,
                            organizationImage:
                                "https://i.imgur.com/UnWWlu3.png"),
                        context);
                  }
                },
              ),
            ),
            gapH32,
          ],
        ),
      ),
    );
  }
}
