import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:omifit_studio/utils/utils.dart';

class OrgAddBtn extends StatelessWidget {
  final Function() onPressed;
  const OrgAddBtn({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return BouncingWidget(
      scaleFactor: 0.8,
      duration: const Duration(milliseconds: 200),
      onPressed: onPressed,
      child: Container(
        constraints: const BoxConstraints(
          minHeight: 70,
        ),
        decoration: BoxDecoration(
          color: primaryColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: primaryColor),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              CupertinoIcons.add,
              color: secondaryColor,
              size: 26,
            ),
            gapW12,
            const Text(
              'Add Organization',
              style: TextStyle(
                color: secondaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
