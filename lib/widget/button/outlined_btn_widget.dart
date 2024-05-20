import 'package:flutter/material.dart';
import 'package:omifit/utils/colors.dart';

class OutlinedBtn extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const OutlinedBtn({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          color: primaryColor,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
