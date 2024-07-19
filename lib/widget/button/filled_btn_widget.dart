import 'package:flutter/material.dart';
import 'package:omifit/utils/colors.dart';

class FilledBtn extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final bool? isLoading;
  const FilledBtn({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading! ? null : onPressed,
      child: isLoading!
          ? const SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(
                strokeWidth: 2.0,
                valueColor: AlwaysStoppedAnimation<Color>(kWhite),
              ),
            )
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
