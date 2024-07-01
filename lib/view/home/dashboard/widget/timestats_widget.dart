import 'package:fl_chart/fl_chart.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omifit/utils/colors.dart';
import 'package:omifit/utils/responsive.dart';

class TimeStats extends StatelessWidget {
  const TimeStats({super.key});

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
              "Time Stats",
              style: TextStyle(
                color: kWhite,
                fontSize: ResponsiveDashboard.isMobile(context) ? 16.sp : 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            trailing: TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                visualDensity: VisualDensity.compact,
              ),
              onPressed: () {},
              child: const Text(
                "Today",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
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
                          findTiming(value.toInt()),
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

  String findTiming(int value) {
    switch (value) {
      case 0:
        return 'Before 6 AM';
      case 1:
        return '6 AM - 12 PM';
      case 2:
        return '12 PM - 6 PM';
      case 3:
        return '6 PM - 12 AM';
      case 4:
        return 'After 12 AM';
      default:
        return '';
    }
  }
}
