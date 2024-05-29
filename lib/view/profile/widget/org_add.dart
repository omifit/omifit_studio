import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:omifit/utils/utils.dart';

class OrgAddBtn extends StatelessWidget {
  final Function() onPressed;
  const OrgAddBtn({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return BouncingWidget(
      scaleFactor: 0.2,
      onPressed: onPressed,
      child: Container(
        constraints: const BoxConstraints(
          minHeight: 200,
        ),
        decoration: BoxDecoration(
          color: primaryColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: primaryColor),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              CupertinoIcons.add,
              color: secondaryColor,
              size: 35,
            ),
            gapH8,
            const Text(
              'Add Organization',
              style: TextStyle(
                color: secondaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
