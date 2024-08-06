import 'package:hovering/hovering.dart';
import 'package:omifit/utils/utils.dart';

class AttendanceMemberDetailsCard extends StatelessWidget {
  final String date;
  final String checkin;
  final String checkout;
  final String duration;
  final Function()? onPressed;

  const AttendanceMemberDetailsCard({
    super.key,
    this.onPressed,
    required this.date,
    required this.checkin,
    required this.checkout,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveAttendance(
      mobile: InkWell(
        onTap: onPressed,
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              color: darkBlack,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Column(
            children: [
              const ListTile(
                dense: true,
                title: Text(
                  "Date",
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
                      "Duration",
                      style: TextStyle(
                        color: kWhite,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "2hrs",
                      style: TextStyle(
                          color: secondaryColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              const ListTile(
                dense: true,
                visualDensity: VisualDensity.compact,
                title: Text(
                  "Check-in",
                  style: TextStyle(
                    color: kWhite,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  "7:00 Pm",
                  style: TextStyle(
                      color: secondaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Check-out",
                      style: TextStyle(
                        color: kWhite,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "7:45 Pm",
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
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(
              children: [
                gapH15,
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Date",
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
                            "Check-In",
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
                            "Check-Out",
                            style: TextStyle(
                                color: kWhite,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          gapH5,
                          const Text(
                            "7:00PM",
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
                            "Duartion",
                            style: TextStyle(
                                color: kWhite,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          gapH5,
                          const Text(
                            "2.5 Hours",
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
                gapH15,
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
              width: 140,
              child: Text(
                date,
                style: const TextStyle(color: kWhite),
              ),
            ),
            SizedBox(
              width: 90,
              child: Text(
                checkin,
                style: const TextStyle(color: kWhite),
              ),
            ),
            SizedBox(
              width: 90,
              child: Text(
                checkout,
                style: const TextStyle(color: kWhite),
              ),
            ),
            SizedBox(
              width: 90,
              child: Text(
                duration,
                style: const TextStyle(color: kWhite),
              ),
            ),
            SizedBox(
              width: 70,
              child: InkWell(
                  onTap: onPressed, child: const Icon(Icons.more_vert_rounded)),
            )
          ],
        ),
      ),
    );
  }
}
