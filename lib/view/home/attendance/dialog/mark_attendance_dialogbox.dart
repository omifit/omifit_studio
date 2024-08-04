import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/cupertino.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/profile/profile_view_model.dart';
import 'package:omifit/widget/imageicon/banner_image.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class MarkAttendanceDialog {
  static WoltModalSheetPage build(BuildContext context) {
    return WoltModalSheetPage(
      backgroundColor: darkBlack,
      surfaceTintColor: lightBlack,
      hasSabGradient: false,
      isTopBarLayerAlwaysVisible: true,
      topBar: PaddedRow(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                "Mark Attendance",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: ResponsiveDashboard.isMobile(context) ? 18 : 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
      trailingNavBarWidget: Padding(
        padding: const EdgeInsets.only(right: 22),
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
          return const MarkAttendance();
        },
      ),
    );
  }
}

class MarkAttendance extends ConsumerStatefulWidget {
  const MarkAttendance({
    super.key,
  });

  @override
  ConsumerState<MarkAttendance> createState() => _MarkAttendanceState();
}

class _MarkAttendanceState extends ConsumerState<MarkAttendance> {
  int page = 1;
  @override
  Widget build(BuildContext context) {
    final ProfileViewModel profileViewModel =
        ref.watch(profileViewModelProvider);
    return SingleChildScrollView(
      child: PaddedColumn(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          gapH20,
          CustomSlidingSegmentedControl<int>(
            initialValue: page,
            isStretch: true,
            children: const {
              1: Text('Manual QR Code'),
              2: Text('QR Code'),
            },
            decoration: BoxDecoration(
              color: lightBlack,
              borderRadius: BorderRadius.circular(8),
            ),
            thumbDecoration: BoxDecoration(
              color: CupertinoColors.systemGrey,
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.3),
                  blurRadius: 4.0,
                  spreadRadius: 1.0,
                  offset: const Offset(
                    0.0,
                    2.0,
                  ),
                ),
              ],
            ),
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInToLinear,
            onValueChanged: (v) {
              setState(() {
                page = v;
              });
            },
          ),
          if (page == 1)
            Column(
              children: [
                gapH20,
                TextField(
                  onChanged: (value) {
                    // profileViewModel.searchLocation(value);
                  },
                  decoration: const InputDecoration(
                      hintText: "Member id / phone number",
                      hintStyle: TextStyle(color: kGrey)),
                ),
                gapH20,
                TextField(
                  onTap: () async {
                    final TimeOfDay? newTime = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                    );
                  },
                  readOnly: true,
                  decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: kGreen, width: 1.0)),
                      fillColor: kGreenbg,
                      prefixIcon: Icon(CupertinoIcons.time, color: kGreen),
                      hintText: "Ckeck-In",
                      hintStyle: TextStyle(color: kGreen)),
                ),
                gapH20,
                TextField(
                  readOnly: true,
                  onTap: () async {
                    final TimeOfDay? newTime = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                    );
                  },
                  decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: kRed, width: 1.0)),
                      fillColor: kRedbg,
                      prefixIcon: Icon(CupertinoIcons.time, color: kRed),
                      hintText: "Check-Out",
                      hintStyle: TextStyle(color: kRed)),
                ),
                gapH20,
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: FilledBtn(
                    text: 'Submit',
                    onPressed: () {
                      context.pop();
                    },
                  ),
                ),
                gapH20,
              ],
            )
          else
            Container(
              child: Column(
                children: [
                  gapH50,
                  const BannerImg(
                    url: "https://i.imgur.com/eHyY6YA.png",
                    height: 200,
                    width: 200,
                    fit: BoxFit.contain,
                  ),
                  gapH30,
                  const PaddedRow(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    children: [
                      Expanded(
                        child: Divider(
                          color: kGrey,
                          thickness: 0.2,
                        ),
                      ),
                      Text("   OR   "),
                      Expanded(
                        child: Divider(
                          color: kGrey,
                          thickness: 0.3,
                        ),
                      ),
                    ],
                  ),
                  gapH20,
                  const Text(
                    "GYM ID : EXCEL342",
                  ),
                  gapH50,
                ],
              ),
            )
        ],
      ),
    );
  }
}
