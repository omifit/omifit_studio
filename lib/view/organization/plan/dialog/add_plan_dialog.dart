import 'package:flutter/services.dart';
import 'package:omifit_studio/data/home/plan/model/create_plan_model.dart';
import 'package:omifit_studio/utils/json_parse.dart';
import 'package:omifit_studio/utils/utils.dart';
import 'package:omifit_studio/view/organization/plan/plan_view_model.dart';
import 'package:omifit_studio/view/organization/plan/widget/duration_dropdown.dart';

class AddPlanDialog extends ConsumerStatefulWidget {
  const AddPlanDialog({
    super.key,
  });

  @override
  ConsumerState<AddPlanDialog> createState() => _AddPlanDialogState();
}

class _AddPlanDialogState extends ConsumerState<AddPlanDialog> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _planCtrl = TextEditingController();
  final TextEditingController _priceCtrl = TextEditingController();
  final TextEditingController _descriptionCtrl = TextEditingController();
  final TextEditingController _durationValueCtrl = TextEditingController();
  String durationUnit = 'Month';
  bool isActive = true;
  @override
  Widget build(BuildContext context) {
    final PlanViewModelProvider planViewModel =
        ref.watch(planViewModelProvider);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: kWhite,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Add New Plan",
          style: TextStyle(
            color: kWhite,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: darkBlack,
      ),
      backgroundColor: darkBlack,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: PaddedColumn(
            padding: EdgeInsets.symmetric(
                horizontal: Responsive.isDesktop(context) ? 22 : 16),
            children: [
              gapH40,
              TextFormField(
                controller: _planCtrl,
                cursorColor: primaryColor,
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  hintText: 'Plan Name',
                  hintStyle: const TextStyle(color: kGrey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (value) =>
                    value!.isEmpty ? 'Please enter Plan Name' : null,
              ),
              gapH25,
              TextFormField(
                controller: _priceCtrl,
                cursorColor: primaryColor,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(7),
                ],
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  prefixIcon: const SizedBox(
                    width: 20,
                    child: Align(
                      child: Text(
                        "₹",
                        style: TextStyle(
                          color: kWhite,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  hintText: 'Enter Plan Price',
                  hintStyle: const TextStyle(color: kGrey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (value) =>
                    value!.isEmpty ? 'Please enter Plan Price' : null,
              ),
              gapH25,
              TextFormField(
                controller: _durationValueCtrl,
                cursorColor: primaryColor,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(4),
                ],
                decoration: InputDecoration(
                    hintText: 'Enter Plan Duration',
                    hintStyle: const TextStyle(color: kGrey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffix: DurationDropdown(
                      onChange: (String selectedValue) {
                        durationUnit = selectedValue;
                        setState(() {});
                      },
                      initialValue: 'Month',
                    )),
                validator: (value) => value!.isEmpty
                    ? 'Please enter Plan Duration in $durationUnit'
                    : null,
              ),
              gapH25,
              TextFormField(
                controller: _descriptionCtrl,
                onTap: () {},
                cursorColor: primaryColor,
                keyboardType: TextInputType.multiline,
                textInputAction: TextInputAction.newline,
                maxLines: 6,
                decoration: InputDecoration(
                  hintText: 'Description',
                  hintStyle: const TextStyle(color: kGrey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (value) =>
                    value!.isEmpty ? 'Please enter Description' : null,
              ),
              gapH25,
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  color: kyellowbg,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    const Text(
                      " Is this plan active?",
                      style: TextStyle(
                        color: Color.fromARGB(255, 192, 192, 192),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 20,
                      child: Switch(
                        value: isActive,
                        onChanged: (value) {
                          isActive = value;
                          setState(() {});
                        },
                        activeColor: kWhite,
                        activeTrackColor: kGreen,
                      ),
                    ),
                    gapW20,
                  ],
                ),
              ),
              gapH25,
              SizedBox(
                width: double.infinity,
                height: 50,
                child: FilledBtn(
                  isLoading: planViewModel.lodingcreateplan,
                  text: "Continue",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      planViewModel.createplan(
                          context,
                          CreatePlanReq(
                            name: _planCtrl.text.trim(),
                            description: _descriptionCtrl.text.trim(),
                            price: parseInteger(_priceCtrl.text.trim()),
                            duration: Duration(
                              value:
                                  parseInteger(_durationValueCtrl.text.trim()),
                              unit: durationUnit,
                            ),
                            isActive: isActive,
                          ));
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
