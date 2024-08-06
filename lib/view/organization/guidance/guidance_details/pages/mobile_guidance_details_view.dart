import 'package:flutter/cupertino.dart';
import 'package:omifit/utils/utils.dart';

class MobileGuidanceDetailsView extends StatefulWidget {
  const MobileGuidanceDetailsView({super.key});

  @override
  State<MobileGuidanceDetailsView> createState() =>
      _MobileGuidanceDetailsViewState();
}

class _MobileGuidanceDetailsViewState extends State<MobileGuidanceDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Bench press Details",
              style: TextStyle(
                color: kWhite,
                fontSize: 16,
              )),
        ),
        body: SingleChildScrollView(
          child: PaddedColumn(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              gapH10,
              PaddedColumn(
                children: [
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
                            backgroundColor: primaryColor),
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.video_camera,
                          color: kWhite,
                        ),
                        label: const Text(
                          "Add Video",
                          style: TextStyle(
                              color: kWhite,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        )),
                  ),
                  const Divider(color: kGrey, thickness: 0.2),
                  gapH10,
                  ...List.generate(15, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: darkBlack,
                            borderRadius: BorderRadius.circular(6)),
                        child: PaddedRow(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 5),
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  CupertinoIcons.play,
                                  color: kRed,
                                  size: 20,
                                )),
                            const Expanded(
                              child: Text(
                                "Video 1",
                                style: TextStyle(
                                    color: kWhite,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                                maxLines: 2,
                              ),
                            ),
                            IconButton(
                              visualDensity: VisualDensity.compact,
                              padding: EdgeInsets.zero,
                              icon: const Icon(
                                Icons.edit,
                                color: secondaryColor,
                                size: 18,
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              visualDensity: VisualDensity.compact,
                              padding: EdgeInsets.zero,
                              icon: const Icon(
                                CupertinoIcons.delete,
                                color: kRed,
                                size: 18,
                              ),
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
            ],
          ),
        ));
  }
}
