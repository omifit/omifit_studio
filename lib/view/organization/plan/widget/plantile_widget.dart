import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:omifit_studio/utils/utils.dart';

class PlanTile extends StatelessWidget {
  final String tittle;
  final String price;
  final String description;
  final String durationValue;
  final String durationUnit;
  final bool isActive;
  final Function() onTap;
  const PlanTile(
      {super.key,
      required this.tittle,
      required this.price,
      required this.description,
      required this.durationValue,
      required this.durationUnit,
      required this.onTap,
      required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Responsive.isDesktop(context)
        ? BouncingWidget(
            duration: const Duration(milliseconds: 150),
            scaleFactor: 0.5,
            onPressed: onTap,
            child: DecoratedBox(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 64, 64, 66),
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              child: PaddedColumn(
                crossAxisAlignment: CrossAxisAlignment.start,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    visualDensity: VisualDensity.compact,
                    titleAlignment: ListTileTitleAlignment.center,
                    horizontalTitleGap: 0,
                    minVerticalPadding: 0,
                    trailing: CircleAvatar(
                      radius: 4,
                      backgroundColor: isActive ? kGreen : kRed,
                    ),
                    title: Text(
                      tittle,
                      style: const TextStyle(
                          color: kWhite,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    "₹ $price",
                    style: const TextStyle(
                      color: kWhite,
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  gapH10,
                  Text(description,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 208, 208, 208),
                          fontSize: 12,
                          fontWeight: FontWeight.w400)),
                  gapH10,
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: const BoxDecoration(
                      color: kyellowbg,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text("Duration - $durationValue $durationUnit",
                            style: const TextStyle(
                                color: secondaryColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w600)),
                        trailing: const Icon(
                          CupertinoIcons.arrow_right,
                          color: secondaryColor,
                          size: 20,
                        )),
                  ),
                  gapH12,
                ],
              ),
            ),
          )
        : DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: darkBlack,
            ),
            child: ListTile(
              onTap: onTap,
              title: Text(tittle,
                  style: TextStyle(
                      color: kWhite.withOpacity(0.9),
                      fontSize: 14,
                      fontWeight: FontWeight.w600)),
              trailing: Text("₹ $price",
                  style: const TextStyle(
                      color: kWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.w600)),
              subtitle: Text("Duration -  $durationValue $durationUnit",
                  style: const TextStyle(
                      color: Color.fromARGB(133, 217, 215, 215),
                      fontSize: 12,
                      fontWeight: FontWeight.w500)),
            ),
          );
  }
}
