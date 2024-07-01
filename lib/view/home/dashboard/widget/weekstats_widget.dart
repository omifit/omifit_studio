// ignore_for_file: avoid_redundant_argument_values

import 'package:fl_chart/fl_chart.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omifit/utils/colors.dart';
import 'package:omifit/utils/responsive.dart';

class WeekStats extends StatelessWidget {
  const WeekStats({super.key});

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
              "Week Stats",
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
                "Month",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: ResponsiveDashboard.isMobile(context) ? 120 : 200,
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
                          findweek(value.toInt()),
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        );
                      },
                    ))),
                gridData: FlGridData(
                  show: ResponsiveDashboard.isTablet(context) ? true : false,
                  drawHorizontalLine: true,
                ),
                barGroups: [
                  BarChartGroupData(
                    x: 0,
                    barRods: [
                      BarChartRodData(
                        color: const Color.fromARGB(231, 108, 191, 229),
                        width: ResponsiveDashboard.isMobile(context) ? 20 : 50,
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
                        width: ResponsiveDashboard.isMobile(context) ? 20 : 50,
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
                        width: ResponsiveDashboard.isMobile(context) ? 20 : 50,
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
                        width: ResponsiveDashboard.isMobile(context) ? 20 : 50,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        toY: 4,
                      ),
                    ],
                  ),
                  BarChartGroupData(
                    x: 4,
                    barRods: [
                      BarChartRodData(
                        color: const Color.fromARGB(231, 108, 191, 229),
                        width: ResponsiveDashboard.isMobile(context) ? 20 : 50,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        toY: 4,
                      ),
                    ],
                  ),
                  BarChartGroupData(
                    x: 5,
                    barRods: [
                      BarChartRodData(
                        color: const Color.fromARGB(231, 108, 191, 229),
                        width: ResponsiveDashboard.isMobile(context) ? 20 : 50,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        toY: 4,
                      ),
                    ],
                  ),
                  BarChartGroupData(
                    x: 6,
                    barRods: [
                      BarChartRodData(
                        color: const Color.fromARGB(231, 108, 191, 229),
                        width: ResponsiveDashboard.isMobile(context) ? 20 : 50,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        toY: 2,
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

  String findweek(int value) {
    switch (value) {
      case 0:
        return 'Sun';
      case 1:
        return 'Mon';
      case 2:
        return 'Tue';
      case 3:
        return 'Wed';
      case 4:
        return 'Thu';
      case 5:
        return 'Fri';
      case 6:
        return 'Sat';
      default:
        return '';
    }
  }
}
