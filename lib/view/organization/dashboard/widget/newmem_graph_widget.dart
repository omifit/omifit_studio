import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:omifit/utils/app_sizes.dart';
import 'package:omifit/utils/colors.dart';
import 'package:pull_down_button/pull_down_button.dart';

class NewMemberGraph extends StatefulWidget {
  const NewMemberGraph({super.key});

  @override
  State<NewMemberGraph> createState() => _NewMemberGraphState();
}

class _NewMemberGraphState extends State<NewMemberGraph> {
  String selectedYear = '2024';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        color: darkBlack,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'New Members',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Row(
                children: [
                  const Text(
                    'Year',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(width: 10),
                  PullDownButton(
                    routeTheme: PullDownMenuRouteTheme(
                      backgroundColor: const Color.fromARGB(70, 103, 103, 103),
                      borderRadius: BorderRadius.circular(10),
                      shadow: BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                      ),
                      width: 100,
                      accessibilityWidth: 200,
                    ),
                    itemBuilder: (context) => [
                      PullDownMenuItem.selectable(
                        title: '2025',
                        selected: selectedYear == '2025',
                        onTap: () {
                          selectedYear = '2025';
                        },
                      ),
                      PullDownMenuItem.selectable(
                        title: '2024',
                        selected: selectedYear == '2024',
                        onTap: () {
                          selectedYear = '2024';
                        },
                      ),
                      PullDownMenuItem.selectable(
                        title: '2023',
                        selected: selectedYear == '2023',
                        onTap: () {
                          selectedYear = '2023';
                        },
                      ),
                    ],
                    buttonBuilder: (context, showMenu) => BouncingWidget(
                      onPressed: showMenu,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          selectedYear,
                          style: const TextStyle(color: kWhite),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          gapH30,
          SizedBox(
            height: 200,
            child: LineChart(
              LineChartData(
                lineTouchData: LineTouchData(
                  touchTooltipData: LineTouchTooltipData(
                    tooltipRoundedRadius: 10,
                    getTooltipColor: (touchedSpot) => lightBlack,
                    getTooltipItems: (touchedSpots) {
                      return touchedSpots.map((LineBarSpot touchedSpot) {
                        const TextStyle textStyle = TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        );
                        return LineTooltipItem(
                          '${touchedSpot.y.toInt()} members',
                          textStyle,
                        );
                      }).toList();
                    },
                  ),
                ),
                titlesData: FlTitlesData(
                    topTitles: const AxisTitles(),
                    rightTitles: const AxisTitles(),
                    leftTitles: const AxisTitles(),
                    bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                      interval: 1,
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        return Text(
                          findmonth(value.toInt()),
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        );
                      },
                    ))),
                gridData: FlGridData(
                  horizontalInterval: 5,
                  verticalInterval: 1,
                  getDrawingHorizontalLine: (value) {
                    return const FlLine(
                      color: Colors.white10,
                      strokeWidth: 1,
                    );
                  },
                  getDrawingVerticalLine: (value) {
                    return const FlLine(
                      color: Colors.white10,
                      strokeWidth: 1,
                    );
                  },
                ),
                borderData: FlBorderData(
                  show: true,
                  border: Border.all(color: const Color(0xff37434d)),
                ),
                lineBarsData: [
                  LineChartBarData(
                    preventCurveOverShooting: true,
                    spots: [
                      const FlSpot(0, 10),
                      const FlSpot(1, 20),
                      const FlSpot(2, 2),
                      const FlSpot(3, 4),
                      const FlSpot(4, 1),
                      const FlSpot(5, 8),
                      const FlSpot(6, 2),
                      const FlSpot(7, 10),
                      const FlSpot(8, 7),
                      const FlSpot(9, 0),
                      const FlSpot(10, 0),
                      const FlSpot(11, 0),
                    ],
                    isCurved: true,
                    barWidth: 5,
                    isStrokeCapRound: true,
                    belowBarData: BarAreaData(
                      show: true,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String findmonth(int value) {
    switch (value) {
      case 0:
        return 'Jan';
      case 1:
        return 'Feb';
      case 2:
        return 'Mar';
      case 3:
        return 'Apr';
      case 4:
        return 'May';
      case 5:
        return 'Jun';
      case 6:
        return 'Jul';
      case 7:
        return 'Aug';
      case 8:
        return 'Sep';
      case 9:
        return 'Oct';
      case 10:
        return 'Nov';
      case 11:
        return 'Dec';
      default:
        return '';
    }
  }
}
