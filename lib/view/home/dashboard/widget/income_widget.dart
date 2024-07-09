import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omifit/utils/colors.dart';
import 'package:omifit/utils/responsive.dart';
import 'package:omifit/widget/picker/time_dropdown2.dart';

class IncomeWidget extends StatelessWidget {
  const IncomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: darkBlack,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          ListTile(
            titleAlignment: ListTileTitleAlignment.top,
            title: Text(
              "Income",
              style: TextStyle(
                color: kWhite,
                fontSize: ResponsiveDashboard.isMobile(context) ? 16.sp : 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            subtitle: Text(
              "₹ 30,000",
              style: TextStyle(
                color: kGreen,
                fontSize: ResponsiveDashboard.isMobile(context) ? 25.sp : 40,
                fontWeight: FontWeight.w700,
              ),
            ),
            trailing:
                TimeDropdown2(onChange: (value) {}, initialValue: "Lifetime"),
          ),
          const SizedBox(height: 10),
          Divider(
            color: kGrey.withOpacity(0.5),
            thickness: 0.5,
          ),
          const SizedBox(height: 10),
          ...List.generate(
            4,
            (index) => ListTile(
              title: Text(
                "Silver Plan",
                style: TextStyle(
                  color: kWhite,
                  fontSize: ResponsiveDashboard.isMobile(context) ? 14.sp : 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                "2 Members",
                style: TextStyle(
                  color: kGrey.withOpacity(0.7),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              trailing: const Text(
                "₹ 10,000",
                style: TextStyle(
                  color: kGreen,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
