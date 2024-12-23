import 'package:flutter/material.dart';
import 'package:omifit_studio/utils/colors.dart';

class OutlinedBtn extends StatelessWidget {
  final String text;
  final Color? color;
  final double? radius;
  final Function() onPressed;
  const OutlinedBtn(
      {super.key,
      required this.text,
      required this.onPressed,
      this.color = primaryColor,
      this.radius});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 50),
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
