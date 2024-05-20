import 'package:flutter/material.dart';
import 'package:omifit/utils/colors.dart';

class FilledBtn extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const FilledBtn({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          color: kWhite,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
