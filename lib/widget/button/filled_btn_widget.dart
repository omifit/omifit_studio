import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:omifit_studio/utils/colors.dart';

class FilledBtn extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final bool? isLoading;
  final Color? color;
  final double? radius;
  const FilledBtn({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.color = primaryColor,
    this.radius = 12,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        surfaceTintColor: color,
        foregroundColor: color,
        padding: const EdgeInsets.symmetric(vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius!),
        ),
      ),
      onPressed: isLoading! ? null : onPressed,
      child: isLoading!
          ? const SizedBox(
              height: 20,
              width: 20,
              child: CupertinoActivityIndicator(
                radius: 12,
              ))
          : Text(
              text,
              style: const TextStyle(
                color: kWhite,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
    );
  }
}
