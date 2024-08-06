import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omifit/utils/colors.dart';
import 'package:omifit/utils/responsive.dart';
import 'package:omifit/widget/picker/time_dropdown2.dart';

class ExpenseWidget extends StatelessWidget {
  const ExpenseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: darkBlack,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
              titleAlignment: ListTileTitleAlignment.top,
              title: Text(
                "Expenses",
                style: TextStyle(
                  color: kWhite,
                  fontSize: ResponsiveDashboard.isMobile(context) ? 16.sp : 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: Text(
                "₹ 30,000",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: ResponsiveDashboard.isMobile(context) ? 25.sp : 40,
                  fontWeight: FontWeight.w700,
                ),
              ),
              trailing: TimeDropdown2(
                  onChange: (value) {}, initialValue: "Lifetime")),
          const SizedBox(height: 10),
          Divider(
            color: kGrey.withOpacity(0.5),
            thickness: 0.5,
          ),
          const SizedBox(height: 10),
          ...List.generate(
            3,
            (index) => ListTile(
              title: const Text(
                "Salary",
                style: TextStyle(
                  color: kWhite,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                "23 Jan 2021",
                style: TextStyle(
                  color: kGrey.withOpacity(0.7),
                  fontWeight: FontWeight.w400,
                ),
              ),
              trailing: const Text(
                "- ₹ 10,000",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          TextButton.icon(
            style: TextButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: kWhite,
            ),
            label: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Add Expense",
                style: TextStyle(
                  color: kWhite,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
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
