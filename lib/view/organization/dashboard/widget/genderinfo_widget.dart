import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omifit/utils/colors.dart';
import 'package:omifit/utils/responsive.dart';
import 'package:omifit/widget/pie_chart/pie_chart.dart';
import 'package:omifit/widget/picker/time_dropdown1.dart';

class GenderInfo extends StatelessWidget {
  const GenderInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: darkBlack,
        borderRadius: BorderRadius.circular(20),
      ),
      child: PaddedColumn(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          ListTile(
              titleAlignment: ListTileTitleAlignment.top,
              title: Text(
                "Gender",
                style: TextStyle(
                  color: kWhite,
                  fontSize: ResponsiveDashboard.isMobile(context) ? 16.sp : 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              trailing: TimeDropdown1(
                onChange: (value) {},
                initialValue: "Lifetime",
              )),
          const SizedBox(height: 10),
          const Column(
            children: [
              PieChartSample2(),
              Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Color(0xff5e69ce),
                      radius: 10,
                    ),
                    title: Text("Male"),
                    trailing: Text(
                      "22 Members",
                      style: TextStyle(
                        color: kGrey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Color(0xffec9b52),
                      radius: 10,
                    ),
                    title: Text("Female"),
                    trailing: Text(
                      "20 Members",
                      style: TextStyle(
                        color: kGrey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: kRed,
                      radius: 10,
                    ),
                    title: Text("Others"),
                    trailing: Text(
                      "2 Members",
                      style: TextStyle(
                        color: kGrey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
