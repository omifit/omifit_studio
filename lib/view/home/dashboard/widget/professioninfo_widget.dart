import 'package:fl_chart/fl_chart.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omifit/utils/colors.dart';
import 'package:omifit/utils/responsive.dart';
import 'package:omifit/widget/picker/time_dropdown1.dart';

class ProfessionInfo extends StatefulWidget {
  const ProfessionInfo({super.key});

  @override
  State<ProfessionInfo> createState() => _ProfessionInfoState();
}

class _ProfessionInfoState extends State<ProfessionInfo> {
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
                "Profession",
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
          const SizedBox(height: 30),
          SizedBox(
            height: 200,
            child: BarChart(BarChartData(
                barTouchData: BarTouchData(
                    touchTooltipData: BarTouchTooltipData(
                  tooltipRoundedRadius: 10,
                  getTooltipColor: (group) {
                    return lightBlack;
                  },
                  getTooltipItem: (group, groupIndex, rod, rodIndex) {
                    return BarTooltipItem(
                      "$groupIndex member",
                      const TextStyle(
                        color: kWhite,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    );
                  },
                )),
                borderData: FlBorderData(show: false),
                alignment: BarChartAlignment.spaceEvenly,
                titlesData: FlTitlesData(
                    rightTitles: const AxisTitles(),
                    topTitles: const AxisTitles(),
                    leftTitles: const AxisTitles(),
                    bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                      interval: 1,
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        return Text(
                          findprofeesion(value.toInt()),
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        );
                      },
                    ))),
                gridData: FlGridData(
                  horizontalInterval: 1,
                  getDrawingHorizontalLine: (value) {
                    return const FlLine(
                      color: Color(0xff37434d),
                      strokeWidth: 1,
                    );
                  },
                ),
                barGroups: [
                  BarChartGroupData(
                    x: 0,
                    barRods: [
                      BarChartRodData(
                        color: const Color.fromARGB(231, 108, 191, 229),
                        width: 50,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        toY: 4,
                      ),
                    ],
                  ),
                  BarChartGroupData(
                    x: 1,
                    barRods: [
                      BarChartRodData(
                        color: const Color.fromARGB(231, 108, 191, 229),
                        width: 50,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        toY: 2,
                      ),
                    ],
                  ),
                  BarChartGroupData(
                    x: 2,
                    barRods: [
                      BarChartRodData(
                        color: const Color.fromARGB(231, 108, 191, 229),
                        width: 50,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        toY: 3,
                      ),
                    ],
                  ),
                  BarChartGroupData(
                    x: 3,
                    barRods: [
                      BarChartRodData(
                        color: const Color.fromARGB(231, 108, 191, 229),
                        width: 50,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        toY: 4,
                      ),
                    ],
                  ),
                ])),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  String findprofeesion(int value) {
    switch (value) {
      case 0:
        return 'Student';
      case 1:
        return 'Worker';
      case 2:
        return 'Business';
      case 3:
        return 'Others';
      default:
        return '';
    }
  }
}
