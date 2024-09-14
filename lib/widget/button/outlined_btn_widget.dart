import 'package:flutter/material.dart';
import 'package:omifit/utils/colors.dart';

class OutlinedBtn extends StatelessWidget {
  final String text;
  final Color? color;
  final Function() onPressed;
  const OutlinedBtn(
      {super.key,
      required this.text,
      required this.onPressed,
      this.color = primaryColor});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        side: WidgetStateProperty.all<BorderSide>(
          BorderSide(color: color!),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
