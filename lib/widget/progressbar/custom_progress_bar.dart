import 'package:flutter/material.dart';
import 'package:omifit/utils/colors.dart';
import 'package:omifit/utils/responsive.dart';
import 'package:simple_progress_indicators/simple_progress_indicators.dart';

class CustomProgressBar extends StatelessWidget {
  final String start;
  final String end;
  final double value;
  final List<Color> colors;
  final Color backgroundColor;

  const CustomProgressBar({
    super.key,
    required this.start,
    required this.end,
    required this.value,
    required this.colors,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          flex: ResponsiveDashboard.isMobile(context) ? 3 : 2,
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              start,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: kGrey,
              ),
            ),
          ),
        ),
        Flexible(
          flex: 6,
          child: AnimatedProgressBar(
            value: value,
            width: double.infinity,
            duration: const Duration(seconds: 1),
            gradient: LinearGradient(
              colors: colors,
            ),
            backgroundColor: backgroundColor,
          ),
        ),
        Flexible(
          child: Container(
            alignment: Alignment.centerRight,
            child: Text(
              end,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: kGrey,
              ),
              textAlign: TextAlign.end,
            ),
          ),
        ),
      ],
    );
  }
}
