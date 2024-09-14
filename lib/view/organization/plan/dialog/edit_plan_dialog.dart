import 'package:cupertino_modal_sheet/cupertino_modal_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:omifit/data/home/plan/model/edit_plan_model.dart';
import 'package:omifit/utils/json_parse.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/organization/plan/plan_view_model.dart';
import 'package:omifit/view/organization/plan/widget/duration_dropdown.dart';

class EditPlanDialog extends ConsumerStatefulWidget {
  final String pid;
  const EditPlanDialog({
    required this.pid,
    super.key,
  });

  @override
  ConsumerState<EditPlanDialog> createState() => _EditPlanDialogState();
}

class _EditPlanDialogState extends ConsumerState<EditPlanDialog> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _planCtrl = TextEditingController();
  final TextEditingController _priceCtrl = TextEditingController();
  final TextEditingController _descriptionCtrl = TextEditingController();
  final TextEditingController _durationValueCtrl = TextEditingController();
  String durationUnit = 'Month';
  bool isActive = true;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _getdata();
    });
    super.initState();
  }

  void _getdata() {
    final PlanViewModelProvider planViewModel = ref.read(planViewModelProvider);
    planViewModel.plandetails(context, widget.pid).whenComplete(() {
      _planCtrl.text =
          planViewModel.planDetailsRes?.body?.organizationPlan?.name ?? '';
      _priceCtrl.text =
          (planViewModel.planDetailsRes?.body?.organizationPlan?.price ?? 0.0)
              .toString();
      _descriptionCtrl.text =
          planViewModel.planDetailsRes?.body?.organizationPlan?.description ??
              '';
      _durationValueCtrl.text = (planViewModel
                  .planDetailsRes?.body?.organizationPlan?.duration?.value ??
              0)
          .toString();
      isActive =
          planViewModel.planDetailsRes?.body?.organizationPlan?.isActive ??
              false;
      durationUnit = planViewModel
              .planDetailsRes?.body?.organizationPlan?.duration?.unit ??
          "";
      setState(() {});
    });
  }

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
          "Edit Plan",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: darkBlack,
      ),
      backgroundColor: darkBlack,
      body: planViewModel.lodingplandetails
          ? const Center(
              child: CupertinoActivityIndicator(
              radius: 16,
            ))
          : SingleChildScrollView(
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
                            initialValue: durationUnit,
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
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
                        isLoading: planViewModel.lodingeditplan,
                        text: "Save",
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            planViewModel.editplan(
                                context,
                                EditPlanReq(
                                  name: _planCtrl.text.trim(),
                                  description: _descriptionCtrl.text.trim(),
                                  price: parseInteger(_priceCtrl.text.trim()),
                                  duration: Duration(
                                    value: parseInteger(
                                        _durationValueCtrl.text.trim()),
                                    unit: durationUnit,
                                  ),
                                  isActive: isActive,
                                ),
                                widget.pid);
                          }
                        },
                      ),
                    ),
                    gapH20,
                    RichText(
                      text: TextSpan(
                        children: [
                          const TextSpan(
                            text: "If you want to delete this plan, click on  ",
                            style: TextStyle(
                              color: kGrey,
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          TextSpan(
                            mouseCursor: WidgetStateMouseCursor.clickable,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                showCupertinoModalSheet(
                                    context: context,
                                    builder: (context) {
                                      return Scaffold(
                                        backgroundColor: darkBlack,
                                        appBar: AppBar(),
                                        body: PaddedColumn(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 36),
                                          children: [
                                            LottieBuilder.asset(
                                              'assets/animations/delete.json',
                                              width: 400,
                                              height: 400,
                                            ),
                                            gapH12,
                                            const SizedBox(
                                              width: 400,
                                              child: Text(
                                                "Are you sure you want to delete this plan? This action cannot be undone.",
                                                style: TextStyle(
                                                  color: kGrey,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            const Spacer(),
                                            SizedBox(
                                              width: double.infinity,
                                              height: 50,
                                              child: FilledBtn(
                                                  radius: 50,
                                                  color: kRed,
                                                  text: "Delete",
                                                  onPressed: () {
                                                    planViewModel.deleteplan(
                                                        context, widget.pid);
                                                  }),
                                            ),
                                            gapH60,
                                          ],
                                        ),
                                      );
                                    });
                                // showCupertinoCalendarPicker(context,
                                //     widgetRenderBox: context.findRenderObject()!
                                //         as RenderBox,
                                //     minimumDate: DateTime.now(),
                                //     maximumDate: DateTime.now());
                              },
                            text: "Delete Plan",
                            style: const TextStyle(
                                color: kRed,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.underline),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    gapH32,
                  ],
                ),
              ),
            ),
    );
  }
}
