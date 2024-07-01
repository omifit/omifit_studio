import 'package:hovering/hovering.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/widget/chips/chip_widget.dart';

class SubscriptionMemCard extends StatelessWidget {
  final String planName;
  final String startDate;
  final String endDate;
  final String price;
  final String? status;
  final String? paymentMode;
  final Function()? onPressed;

  const SubscriptionMemCard({
    super.key,
    this.onPressed,
    required this.planName,
    required this.startDate,
    required this.endDate,
    required this.price,
    this.status,
    this.paymentMode,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveAttendance(
      mobile: InkWell(
        onTap: onPressed,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: ResponsiveMemberDetails.isMobile(context)
                  ? darkBlack
                  : lightBlack,
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          child: Column(
            children: [
              ListTile(
                dense: true,
                title: Text(
                  planName,
                  style: const TextStyle(
                    color: kWhite,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: PaddedRow(
                  padding: const EdgeInsets.only(top: 8),
                  children: [
                    ChipWidget(
                        tittle: status ?? '', color: kRed, bgColor: kRedbg),
                  ],
                ),
                trailing: const Icon(Icons.more_vert_rounded),
              ),
              const Divider(
                color: Color.fromARGB(255, 63, 63, 63),
              ),
              ListTile(
                dense: true,
                visualDensity: VisualDensity.compact,
                title: const Text(
                  "Start Date",
                  style: TextStyle(
                    color: kWhite,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  startDate,
                  style: const TextStyle(
                      color: secondaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      "Price",
                      style: TextStyle(
                        color: kWhite,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      price,
                      style: const TextStyle(
                          color: secondaryColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              const ListTile(
                dense: true,
                title: Text(
                  "End Date",
                  style: TextStyle(
                    color: kWhite,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  "27/02/2001",
                  style: TextStyle(
                      color: secondaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Pay-mode",
                      style: TextStyle(
                        color: kWhite,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "pending",
                      style: TextStyle(
                          color: secondaryColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              gapH10,
            ],
          ),
        ),
      ),
      tablet: InkWell(
        overlayColor: WidgetStateProperty.all(Colors.transparent),
        child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                color: lightBlack,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Column(
              children: [
                ListTile(
                  subtitle: Text(
                    planName,
                    style: const TextStyle(
                      color: kWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  title: PaddedRow(
                    padding: const EdgeInsets.only(bottom: 8, top: 8),
                    children: [
                      ChipWidget(
                          tittle: status ?? "--", color: kRed, bgColor: kRedbg)
                    ],
                  ),
                  trailing: const Icon(Icons.more_vert_rounded),
                ),
                gapH10,
                PaddedRow(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Start Date",
                            style: TextStyle(
                                color: kWhite,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          gapH5,
                          const Text(
                            "27/02/2001",
                            style: TextStyle(
                                color: kGrey,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "End Date",
                            style: TextStyle(
                                color: kWhite,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          gapH5,
                          const Text(
                            "10:00 AM",
                            style: TextStyle(
                                color: kGrey,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Pay-mode",
                            style: TextStyle(
                                color: kWhite,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          gapH5,
                          Text(
                            paymentMode ?? "--",
                            style: const TextStyle(
                                color: kGrey,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Price",
                            style: TextStyle(
                                color: kWhite,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          gapH5,
                          const Text(
                            "\$5000",
                            style: TextStyle(
                                color: kGrey,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                gapH20,
              ],
            )),
      ),
      desktop: HoverContainer(
        hoverDecoration: BoxDecoration(
          color: const Color.fromARGB(18, 173, 162, 162),
          borderRadius: BorderRadius.circular(32),
        ),
        child: PaddedRow(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 50.w,
              child: Text(
                planName,
                style: const TextStyle(color: kWhite),
              ),
            ),
            SizedBox(
              width: 80,
              child: Text(
                startDate,
                style: const TextStyle(color: kWhite),
              ),
            ),
            SizedBox(
              width: 80,
              child: Text(
                endDate,
                style: const TextStyle(color: kWhite),
              ),
            ),
            SizedBox(
              width: 70,
              child: Text(
                price,
                style: const TextStyle(color: kWhite),
              ),
            ),
            SizedBox(
              width: 100,
              child: ChipWidget(
                  tittle: status ?? '', color: kRed, bgColor: kRedbg),
            ),
            SizedBox(
              width: 130,
              child: Text(
                paymentMode ?? "--",
                style: const TextStyle(color: kWhite),
              ),
            ),
            SizedBox(
              width: 50,
              child: InkWell(
                  onTap: onPressed, child: const Icon(Icons.more_vert_rounded)),
            )
          ],
        ),
      ),
    );
  }
}
