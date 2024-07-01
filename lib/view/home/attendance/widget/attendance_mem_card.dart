import 'package:hovering/hovering.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/widget/chips/chip_widget.dart';
import 'package:omifit/widget/imageicon/profile_img.dart';

class AttendanceMemCard extends StatelessWidget {
  final String memid;
  final String name;
  final String profilePic;
  final String role;
  final String? date;
  final String? checkin;
  final String? checkout;
  final String? duration;
  final Function()? onPressed;

  const AttendanceMemCard({
    super.key,
    required this.memid,
    required this.name,
    required this.profilePic,
    required this.role,
    this.date,
    this.checkin,
    this.checkout,
    this.duration,
    this.onPressed,
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
                leading: ProfileImg(url: "https://i.imgur.com/UnWWlu3.png"),
                title: Text(
                  "Ayush Majif",
                  style: TextStyle(
                    color: kWhite,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  "Member",
                  style: TextStyle(
                      color: secondaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
                trailing: Icon(Icons.more_vert_rounded),
              ),
              const Divider(
                color: Color.fromARGB(255, 63, 63, 63),
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
                color: darkBlack,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Column(
              children: [
                const ListTile(
                  leading: ProfileImg(url: "https://i.imgur.com/UnWWlu3.png"),
                  title: Text(
                    "Ayush Majif",
                    style: TextStyle(
                      color: kWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text(
                    "Member",
                    style: TextStyle(
                        color: secondaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  trailing: Icon(Icons.more_vert_rounded),
                ),
                gapH10,
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
                gapH20,
              ],
            )),
      ),
      desktop: InkWell(
        onTap: onPressed,
        child: HoverContainer(
          hoverDecoration: BoxDecoration(
            color: const Color.fromARGB(18, 173, 162, 162),
            borderRadius: BorderRadius.circular(32),
          ),
          cursor: SystemMouseCursors.click,
          child: PaddedRow(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 30,
                child: Text(
                  memid,
                  style: const TextStyle(color: kWhite),
                ),
              ),
              SizedBox(
                width: 48,
                child: ProfileImg(
                  url: profilePic,
                  height: 48,
                ),
              ),
              SizedBox(
                width: 40.w,
                child: Text(
                  name,
                  style: const TextStyle(color: kWhite),
                ),
              ),
              const SizedBox(
                width: 90,
                child: ChipWidget(
                    tittle: "Member", color: primaryColor, bgColor: kyellowbg),
              ),
              SizedBox(
                width: 80,
                child: Text(
                  date ?? "--",
                  style: const TextStyle(color: kWhite),
                ),
              ),
              SizedBox(
                width: 80,
                child: Text(
                  checkin ?? "--",
                  style: const TextStyle(color: kWhite),
                ),
              ),
              SizedBox(
                width: 80,
                child: Text(
                  checkout ?? "--",
                  style: const TextStyle(color: kWhite),
                ),
              ),
              SizedBox(
                width: 70,
                child: Text(
                  duration ?? "--",
                  style: const TextStyle(color: kWhite),
                ),
              ),
              SizedBox(
                width: 50,
                child: InkWell(
                    onTap: () {}, child: const Icon(Icons.more_vert_rounded)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
