import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/home/home_view_model.dart';

class MobilePlanView extends ConsumerStatefulWidget {
  const MobilePlanView({super.key});

  @override
  ConsumerState<MobilePlanView> createState() => _MobilePlanViewState();
}

class _MobilePlanViewState extends ConsumerState<MobilePlanView> {
  @override
  Widget build(BuildContext context) {
    final HomeViewModel homeViewModel = ref.watch(homeViewModelProvider);
    return Scaffold(
      body: SingleChildScrollView(
        child: PaddedColumn(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          children: [
            gapH10,
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text("Plans",
                  style: TextStyle(
                      color: kWhite,
                      fontSize: 18,
                      fontWeight: FontWeight.w800)),
              trailing: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(15),
                      elevation: 0,
                      backgroundColor: primaryColor),
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.plus_circle,
                    color: kWhite,
                  ),
                  label: const Text(
                    "Add Plan",
                    style: TextStyle(
                        color: kWhite,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  )),
            ),
            const Divider(color: kGrey, thickness: 0.2),
            gapH10,
            ...List.generate(
                4,
                (index) => Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: DecoratedBox(
                      decoration: const BoxDecoration(
                        color: darkBlack,
                        borderRadius: BorderRadius.all(Radius.circular(26)),
                      ),
                      child: PaddedColumn(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 12),
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            visualDensity: VisualDensity.compact,
                            titleAlignment: ListTileTitleAlignment.center,
                            horizontalTitleGap: 0,
                            minVerticalPadding: 0,
                            trailing: const CircleAvatar(
                              radius: 4,
                              backgroundColor: kGreen,
                            ),
                            title: Text("Gold Plan for 3 months",
                                style: TextStyle(
                                    color: kWhite,
                                    fontFamily: GoogleFonts.roboto().fontFamily,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600)),
                          ),
                          const Text("₹ 90",
                              style: TextStyle(
                                  color: kWhite,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700)),
                          gapH10,
                          Text(
                              "We advertise on social media to drive local clients onto Cosmetropolis and directly to your profile",
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 208, 208, 208),
                                  fontSize: 14,
                                  fontFamily: GoogleFonts.roboto().fontFamily,
                                  fontWeight: FontWeight.w400)),
                          gapH15,
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            decoration: const BoxDecoration(
                              color: kyellowbg,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                            ),
                            child: ListTile(
                                visualDensity: VisualDensity.compact,
                                onTap: () {
                                  HapticFeedback.lightImpact();
                                },
                                contentPadding: EdgeInsets.zero,
                                title: const Text("Duration - 6 months",
                                    style: TextStyle(
                                        color: secondaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600)),
                                trailing: const Icon(
                                  CupertinoIcons.arrow_right,
                                  color: secondaryColor,
                                )),
                          ),
                          gapH10
                        ],
                      ),
                    ))),
            gapH60,
          ],
        ),
      ),
    );
  }
}
