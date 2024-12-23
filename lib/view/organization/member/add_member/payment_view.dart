import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:omifit_studio/data/home/subscription/model/purchase_plan_model.dart';
import 'package:omifit_studio/utils/json_parse.dart';
import 'package:omifit_studio/utils/utils.dart';
import 'package:omifit_studio/view/organization/member/member_view_model.dart';
import 'package:omifit_studio/widget/picker/payment_type_dropdown.dart';

//! Payment member dialog
class PaymentView extends ConsumerStatefulWidget {
  final List<SelectedPlan> selectedItems;
  const PaymentView({
    super.key,
    required this.selectedItems,
  });

  @override
  ConsumerState<PaymentView> createState() => _PaymentViewState();
}

class _PaymentViewState extends ConsumerState<PaymentView> {
  List<SelectedPlan> tempSelectedPlan = [];
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // tempSelectedPlan.addAll(
    //     widget.selectedItems.map((e) => e.copyWith(paymentForm: "cash")));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final MemberViewModel memberViewModel = ref.watch(memberViewModelProvider);
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: SizedBox(
          width: double.infinity,
          height: 52,
          child: FilledBtn(
            color: (tempSelectedPlan.any((plan) =>
                        (plan.orginalPlanAmount ?? 0) >=
                        (plan.paidAmount ?? 0)) &&
                    tempSelectedPlan.any((plan) =>
                        plan.paidAmount != 0 || plan.paidAmount != null))
                ? kRed
                : kGrey,
            isLoading: memberViewModel.lodingBuySubscription,
            text: "Pay",
            onPressed: () {
              double totalPaidAmount = 0;
              double totalAmount = 0;
              for (final plan in tempSelectedPlan) {
                totalPaidAmount += plan.paidAmount ?? 0;
                totalAmount += plan.orginalPlanAmount ?? 0;
              }
              if (totalAmount >= totalPaidAmount &&
                  !tempSelectedPlan.any((plan) =>
                      plan.paidAmount == 0 || plan.paidAmount == null)) {
                memberViewModel.buySubscription(context, tempSelectedPlan);
              }
            },
          ),
        ),
      ),
      backgroundColor: darkBlack,
      appBar: AppBar(
        backgroundColor: darkBlack,
        title: Text("Payment",
            style: TextStyle(
                color: kWhite,
                fontSize: ResponsiveMember.isMobile(context) ? 18 : 20,
                fontWeight: FontWeight.w600)),
        leading: IconButton(
          icon: const Icon(CupertinoIcons.back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
          child: PaddedColumn(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          gapH10,
          DecoratedBox(
            decoration: BoxDecoration(
              color: lightBlack.withOpacity(0.4),
              borderRadius: const BorderRadius.all(Radius.circular(0)),
            ),
            child: PaddedColumn(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              children: [
                ListTile(
                  dense: true,
                  visualDensity: VisualDensity.compact,
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(
                    Icons.payments_rounded,
                    color: kWhite.withOpacity(0.5),
                    size: 19,
                  ),
                  title: const Text(
                    "Total Item Cost",
                    style: TextStyle(
                      color: kWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: Text(
                    "₹ ${tempSelectedPlan.fold(0, (sum, plan) => sum + plan.orginalPlanAmount!)}",
                    style: const TextStyle(
                      color: kWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                ListTile(
                  dense: true,
                  visualDensity: VisualDensity.compact,
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(
                    Icons.account_balance_wallet,
                    color: kWhite.withOpacity(0.5),
                    size: 19,
                  ),
                  title: const Text(
                    "Amount Paid",
                    style: TextStyle(
                      color: kWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: Text(
                    "₹ ${tempSelectedPlan.fold(0, (sum, plan) => sum + (plan.paidAmount ?? 0))}",
                    style: const TextStyle(
                      color: kWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                ListTile(
                  dense: true,
                  visualDensity: VisualDensity.compact,
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(
                    Icons.credit_card,
                    color: kWhite.withOpacity(0.5),
                    size: 19,
                  ),
                  title: const Text(
                    "Due Payment",
                    style: TextStyle(
                      color: kWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: Text(
                    "₹ ${tempSelectedPlan.fold(0, (sum, plan) => sum + (plan.dueAmount ?? 0))}",
                    style: const TextStyle(
                      color: kWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                ListTile(
                    dense: true,
                    visualDensity: VisualDensity.compact,
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(
                      Icons.credit_card,
                      color: kWhite.withOpacity(0.5),
                      size: 19,
                    ),
                    title: const Text(
                      "Payment Type",
                      style: TextStyle(
                        color: kWhite,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    trailing: PaymentTypeDropdown(
                      initialValue: 'Cash',
                      onChange: (value) {
                        // tempSelectedPlan = tempSelectedPlan
                        //     .map((e) =>
                        //         e.copyWith(paymentForm: lowercaseAll(value)))
                        //     .toList();
                        // setState(() {});
                      },
                    )),
              ],
            ),
          ),
          gapH22,
          PaddedColumn(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            children: [
              ...List.generate(
                  tempSelectedPlan.length,
                  (index) => Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: lightBlack.withOpacity(0.4),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                            border: const Border(
                              left: BorderSide(
                                color: kRed,
                                width: 2,
                              ),
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 46, 46, 46),
                                spreadRadius: 2,
                                blurRadius: 40,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                titleAlignment: ListTileTitleAlignment.bottom,
                                title: Text(
                                    tempSelectedPlan[index].planName ?? "",
                                    style: const TextStyle(
                                        color: kWhite,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500)),
                                trailing: Text(
                                    "₹ ${tempSelectedPlan[index].orginalPlanAmount}",
                                    style: const TextStyle(
                                        color: kWhite,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600)),
                              ),
                              Wrap(
                                crossAxisAlignment: WrapCrossAlignment.start,
                                children: [
                                  TextButton.icon(
                                      label: Text(
                                          "Activation Date - ${formatDateTime(tempSelectedPlan[index].membershipStartDate!)}",
                                          style: const TextStyle(
                                              color: kGrey,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500)),
                                      onPressed: () {
                                        showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime.now(),
                                          lastDate: DateTime.now()
                                              .add(const Duration(days: 365)),
                                        ).then((selectedStartDate) {
                                          if (selectedStartDate != null) {
                                            tempSelectedPlan[
                                                index] = tempSelectedPlan[
                                                    index]
                                                .copyWith(
                                                    membershipStartDate:
                                                        selectedStartDate,
                                                    membershipEndDate:
                                                        calculateStartAndExpireDate(
                                                                selectedStartDate,
                                                                tempSelectedPlan[
                                                                        index]
                                                                    .durationValue!,
                                                                tempSelectedPlan[
                                                                        index]
                                                                    .durationUnit!)
                                                            .end);
                                            setState(() {});
                                          }
                                        });
                                      },
                                      icon: const Icon(
                                        Icons.mode_edit,
                                        color: primaryColor,
                                        size: 18,
                                      )),
                                  TextButton.icon(
                                      label: Text(
                                          "Expire Date - ${formatDateTime(tempSelectedPlan[index].membershipEndDate!)}",
                                          style: const TextStyle(
                                              color: kGrey,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500)),
                                      onPressed: () {
                                        showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime.now(),
                                          lastDate: DateTime.now()
                                              .add(const Duration(days: 365)),
                                        ).then((selectedStartDate) {
                                          if (selectedStartDate != null) {
                                            tempSelectedPlan[index] =
                                                tempSelectedPlan[index]
                                                    .copyWith(
                                                        membershipEndDate:
                                                            selectedStartDate);
                                            setState(() {});
                                          }
                                        });
                                      },
                                      icon: const Icon(
                                        Icons.mode_edit,
                                        color: primaryColor,
                                        size: 16,
                                      )),
                                ],
                              ),
                              gapH10,
                              Padding(
                                padding: const EdgeInsets.all(16),
                                child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      color: lightBlack.withOpacity(0.9),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(12),
                                      ),
                                    ),
                                    child: PaddedRow(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 8),
                                        children: [
                                          Expanded(
                                            child: CupertinoTextFormFieldRow(
                                              padding: EdgeInsets.zero,
                                              keyboardType:
                                                  TextInputType.number,
                                              inputFormatters: [
                                                LengthLimitingTextInputFormatter(
                                                    10),
                                                FilteringTextInputFormatter
                                                    .digitsOnly,
                                              ],
                                              prefix: const SizedBox(
                                                  child: Text(
                                                'Pay       ₹',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                              placeholder: 'Enter Amount',
                                              style: const TextStyle(
                                                  color: kWhite),
                                              validator: (String? value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Please enter a value';
                                                }
                                                return null;
                                              },
                                              onChanged: (value) {
                                                final int totalAmount =
                                                    tempSelectedPlan[index]
                                                        .orginalPlanAmount!;
                                                final int paidAmount =
                                                    parseInteger(value) ?? 0;
                                                final int dueAmount =
                                                    totalAmount - paidAmount;
                                                tempSelectedPlan[index] =
                                                    tempSelectedPlan[index]
                                                        .copyWith(
                                                            paidAmount:
                                                                paidAmount,
                                                            dueAmount:
                                                                dueAmount);
                                                setState(() {});
                                              },
                                            ),
                                          ),
                                          Expanded(
                                            child: CupertinoTextFormFieldRow(
                                              controller: TextEditingController(
                                                  text: (tempSelectedPlan[index]
                                                              .dueAmount ??
                                                          0)
                                                      .toString()),
                                              readOnly: true,
                                              padding: EdgeInsets.zero,
                                              keyboardType:
                                                  TextInputType.number,
                                              inputFormatters: [
                                                LengthLimitingTextInputFormatter(
                                                    10),
                                                FilteringTextInputFormatter
                                                    .digitsOnly,
                                              ],
                                              prefix: const SizedBox(
                                                  child: Text('Due       ₹',
                                                      style: TextStyle(
                                                          fontSize: 15))),
                                              placeholder: 'Enter Amount',
                                              style: const TextStyle(
                                                  color: kWhite),
                                            ),
                                          ),
                                        ])),
                              ),
                            ],
                          ),
                        ),
                      )),
            ],
          ),
        ],
      )),
    );
  }

  String formatDateTime(DateTime dateTime) {
    return DateFormat('d MMM yyyy').format(dateTime);
  }

  DateTimeRange calculateStartAndExpireDate(
      DateTime startDate, int number, String unit) {
    // Start DateTime is the current DateTime
    final DateTime startDateTime = startDate;
    DateTime expireDateTime;

    // Check the unit and calculate expiration DateTime accordingly
    switch (unit.toLowerCase()) {
      case 'day':
        expireDateTime = startDateTime.add(Duration(days: number));
        break;
      case 'week':
        expireDateTime = startDateTime.add(Duration(days: number * 7));
        break;
      case 'month':
        expireDateTime = DateTime(
          startDateTime.year,
          startDateTime.month + number,
          startDateTime.day,
          startDateTime.hour,
          startDateTime.minute,
          startDateTime.second,
          startDateTime.millisecond,
          startDateTime.microsecond,
        );
        break;
      case 'year':
        expireDateTime = DateTime(
          startDateTime.year + number,
          startDateTime.month,
          startDateTime.day,
          startDateTime.hour,
          startDateTime.minute,
          startDateTime.second,
          startDateTime.millisecond,
          startDateTime.microsecond,
        );
        break;
      default:
        throw ArgumentError('Invalid unit: $unit. Use day, month, or year.');
    }

    // Return the calculated DateTimeRange (start and expire datetime)
    return DateTimeRange(start: startDateTime, end: expireDateTime);
  }
}
