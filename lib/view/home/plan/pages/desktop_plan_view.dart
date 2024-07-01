import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:omifit/utils/utils.dart';

class DesktopPlanView extends StatefulWidget {
  const DesktopPlanView({super.key});

  @override
  State<DesktopPlanView> createState() => _DesktopPlanViewState();
}

class _DesktopPlanViewState extends State<DesktopPlanView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: PaddedColumn(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          gapH20, 
          Container(
            constraints: BoxConstraints(minHeight: 600.h),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: darkBlack,
              borderRadius: BorderRadius.all(Radius.circular(32)),
            ),
            child: PaddedColumn(
              crossAxisAlignment: CrossAxisAlignment.start,
              padding: const EdgeInsets.symmetric(horizontal: 25),
              children: [
                gapH10,
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: const Text("Plan",
                      style: TextStyle(
                          color: kWhite,
                          fontSize: 18,
                          fontWeight: FontWeight.w800)),
                  trailing: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(20),
                        elevation: 0,
                        backgroundColor:
                            const Color.fromRGBO(194, 117, 39, 0.2),
                      ),
                      onPressed: () {},
                      icon: const Icon(CupertinoIcons.add_circled,
                          color: secondaryColor),
                      label: const Text(
                        "Create Plan",
                        style: TextStyle(
                            color: secondaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      )),
                ),
                const Divider(color: kGrey, thickness: 0.2),
                gapH10,
                AlignedGridView.count(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 4,
                  mainAxisSpacing: 25,
                  crossAxisSpacing: 25,
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 380,
                      decoration: const BoxDecoration(
                        color: lightBlack,
                        borderRadius: BorderRadius.all(Radius.circular(32)),
                      ),
                      child: PaddedColumn(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        children: [
                          const ListTile(
                            contentPadding: EdgeInsets.zero,
                            visualDensity: VisualDensity.compact,
                            titleAlignment: ListTileTitleAlignment.top,
                            title: Text("Gold Plan for 3 months",
                                style: TextStyle(
                                    color: secondaryColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800)),
                          ),
                          const Text("\$ 90",
                              style: TextStyle(
                                  color: kWhite,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w800)),
                          gapH10,
                          const Text(
                              "We advertise on social media to drive local clients onto Cosmetropolis and directly to your profile",
                              style: TextStyle(
                                  color: kWhite,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w200)),
                          gapH10,
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading:
                                const Icon(CupertinoIcons.time, color: kGreen),
                            title: const Text("Duration - 6 months",
                                style: TextStyle(
                                    color: kWhite,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600)),
                            trailing: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.all(15),
                                    elevation: 0,
                                    backgroundColor: const Color.fromRGBO(
                                        194, 117, 39, 0.2)),
                                onPressed: () {},
                                icon: const Icon(CupertinoIcons.pencil,
                                    color: secondaryColor),
                                label: const Text(
                                  "Edit",
                                  style: TextStyle(
                                      color: secondaryColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                )),
                          ),
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
