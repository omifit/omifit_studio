import 'package:iconly/iconly.dart';
import 'package:intl/intl.dart';
import 'package:omifit_studio/utils/utils.dart';
import 'package:omifit_studio/view/profile/profile_view_model.dart';

class CreateCouponDialog extends ConsumerStatefulWidget {
  const CreateCouponDialog({super.key});
  @override
  ConsumerState<CreateCouponDialog> createState() => _CreateCouponDialogState();
}

class _CreateCouponDialogState extends ConsumerState<CreateCouponDialog> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _couponCodeController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _startDateController = TextEditingController();
  final TextEditingController _endDateController = TextEditingController();
  final TextEditingController _discountPriceController =
      TextEditingController();
  final List<String> _selctedPaln = [];
  final bool _isActive = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ProfileViewModel profileViewModel =
        ref.watch(profileViewModelProvider);
    return Scaffold(
      backgroundColor: darkBlack,
      appBar: AppBar(
        backgroundColor: darkBlack,
        title: Text(
          "Create Coupon",
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
            onPressed: () {},
            child: const Text(
              "Next",
              style: TextStyle(
                color: primaryColor,
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
              TextFormField(
                controller: _couponCodeController,
                cursorColor: primaryColor,
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: 'Enter Coupon Code',
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (value) =>
                    value!.isEmpty ? "Coupon Code can't be empty" : null,
              ),
              gapH25,
              TextFormField(
                controller: _couponCodeController,
                cursorColor: primaryColor,
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: 'Description',
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (value) => value!.isEmpty ? "Description" : null,
              ),
              gapH25,
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _startDateController,
                      readOnly: true,
                      onTap: () {
                        showDatePicker(
                          context: context,
                          initialDatePickerMode: DatePickerMode.year,
                          initialDate: _startDateController.text == ""
                              ? DateTime.now()
                              : DateFormat('MM/dd/yyyy')
                                  .parse(_startDateController.text),
                          firstDate: DateTime(1900),
                          lastDate: DateTime.now(),
                          onDatePickerModeChange: (value) => print(value),
                        ).then((value) {
                          if (value != null) {
                            _startDateController.text =
                                DateFormat('dd/MM/yyyy').format(value);
                            setState(() {});
                          }
                        });
                      },
                      cursorColor: primaryColor,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: 'Enter Start Date',
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
                  gapW15,
                  Expanded(
                    child: TextFormField(
                      controller: _startDateController,
                      readOnly: true,
                      onTap: () {
                        showDatePicker(
                          context: context,
                          initialDatePickerMode: DatePickerMode.year,
                          initialDate: _startDateController.text == ""
                              ? DateTime.now()
                              : DateFormat('MM/dd/yyyy')
                                  .parse(_startDateController.text),
                          firstDate: DateTime(1900),
                          lastDate: DateTime.now(),
                          onDatePickerModeChange: (value) => print(value),
                        ).then((value) {
                          if (value != null) {
                            _startDateController.text =
                                DateFormat('dd/MM/yyyy').format(value);
                            setState(() {});
                          }
                        });
                      },
                      cursorColor: primaryColor,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: 'Enter Start Date',
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
