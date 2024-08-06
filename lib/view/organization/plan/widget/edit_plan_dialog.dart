import 'package:omifit/utils/utils.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class AddPlanDialog {
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
              "Create your Organization",
              style: TextStyle(
                color: Colors.white,
                fontSize: Responsive.isMobile(context) ? 0 : 18,
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
          return const AddPlanDialogWidget();
        },
      ),
    );
  }
}

class AddPlanDialogWidget extends ConsumerStatefulWidget {
  const AddPlanDialogWidget({
    super.key,
  });

  @override
  ConsumerState<AddPlanDialogWidget> createState() => _MarkAttendanceState();
}

class _MarkAttendanceState extends ConsumerState<AddPlanDialogWidget> {
  final GlobalKey _formkey = GlobalKey();
  final TextEditingController _planCtrl = TextEditingController();
  final TextEditingController _priceCtrl = TextEditingController();
  final TextEditingController _descriptionCtrl = TextEditingController();
  final TextEditingController _durationCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formkey,
        child: PaddedColumn(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          children: [
            gapH25,
            TextFormField(
              controller: _planCtrl,
              cursorColor: primaryColor,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                hintText: 'Plan Name',
                hintStyle: const TextStyle(
                  color: kGrey,
                  fontWeight: FontWeight.w600,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              validator: (value) =>
                  value!.isEmpty ? 'Please enter Plan Name' : null,
            ),
            gapH25,
            TextFormField(
              controller: _descriptionCtrl,
              readOnly: true,
              onTap: () {},
              cursorColor: primaryColor,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              maxLines: 3,
              decoration: InputDecoration(
                hintText: 'Description',
                hintStyle: const TextStyle(
                  color: kGrey,
                  fontWeight: FontWeight.w600,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              validator: (value) =>
                  value!.isEmpty ? 'Please enter Description' : null,
            ),
            gapH25,
            TextFormField(
              controller: _priceCtrl,
              cursorColor: primaryColor,
              keyboardType: TextInputType.number,
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
                hintStyle: const TextStyle(
                  color: kGrey,
                  fontWeight: FontWeight.w600,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              validator: (value) =>
                  value!.isEmpty ? 'Please enter Plan Price' : null,
            ),
            gapH25,
            TextFormField(
              controller: _durationCtrl,
              cursorColor: primaryColor,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  hintText: 'Enter Plan Duration',
                  hintStyle: const TextStyle(
                    color: kGrey,
                    fontWeight: FontWeight.w600,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixIcon: const SizedBox(
                    width: 80,
                    child: Center(
                      child: Text(
                        "Months",
                        style: TextStyle(
                          color: kWhite,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )),
              validator: (value) => value!.isEmpty
                  ? 'Please enter Plan Duration in Months'
                  : null,
            ),
            gapH25,
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
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
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 20,
                    child: Switch(
                      value: true,
                      onChanged: (value) {},
                      activeColor: kWhite,
                      activeTrackColor: kBlue,
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
                text: "Continue",
                onPressed: () {},
              ),
            ),
            gapH32,
          ],
        ),
      ),
    );
  }
}
