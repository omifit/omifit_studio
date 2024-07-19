import 'package:flutter/cupertino.dart';
import 'package:omifit/utils/utils.dart';

class TabletGuidanceDetailsView extends StatefulWidget {
  const TabletGuidanceDetailsView({super.key});

  @override
  State<TabletGuidanceDetailsView> createState() =>
      _TabletGuidanceDetailsViewState();
}

class _TabletGuidanceDetailsViewState extends State<TabletGuidanceDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Bench press Details"),
        ),
        body: SingleChildScrollView(
          child: PaddedColumn(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            children: [
              gapH20,
              DecoratedBox(
                decoration: const BoxDecoration(
                  color: darkBlack,
                  borderRadius: BorderRadius.all(Radius.circular(32)),
                ),
                child: PaddedColumn(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  children: [
                    gapH10,
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: const Text("Videos",
                          style: TextStyle(
                              color: kWhite,
                              fontSize: 18,
                              fontWeight: FontWeight.w800)),
                      trailing: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(15),
                              elevation: 0,
                              backgroundColor:
                                  const Color.fromRGBO(194, 117, 39, 0.2)),
                          onPressed: () {},
                          icon: const Icon(CupertinoIcons.video_camera,
                              color: secondaryColor),
                          label: const Text(
                            "Add Video",
                            style: TextStyle(
                                color: secondaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          )),
                    ),
                    const Divider(color: kGrey, thickness: 0.2),
                    gapH10,
                    ...List.generate(15, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: kGrey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: PaddedRow(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(CupertinoIcons.play,
                                      color: kRed)),
                              gapW10,
                              const Expanded(
                                child: Text(
                                  "Video 1",
                                  style: TextStyle(
                                      color: kWhite,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                  maxLines: 2,
                                ),
                              ),
                              IconButton(
                                icon: const Icon(Icons.edit,
                                    color: secondaryColor),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: const Icon(CupertinoIcons.delete,
                                    color: kRed),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                    gapH20,
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
