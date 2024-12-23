import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:omifit_studio/utils/utils.dart';

class DocumentDetailsDialog extends StatefulWidget {
  const DocumentDetailsDialog({super.key});

  @override
  State<DocumentDetailsDialog> createState() => _DocumentDetailsDialogState();
}

class _DocumentDetailsDialogState extends State<DocumentDetailsDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: darkBlack,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              CupertinoIcons.back,
              color: kWhite,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
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
                              backgroundColor: kyellowbg.withOpacity(0.1)),
                          onPressed: () {
                            // showCupertinoModalSheet(
                            //     context: context,
                            //     builder: (context) {
                            //       return AddDocumentDialog();
                            //     });
                          },
                          icon: const Icon(
                            CupertinoIcons.video_camera,
                            color: primaryColor,
                          ),
                          label: const Text(
                            "Add Video",
                            style: TextStyle(
                                color: primaryColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          )).animate().slideX(
                        begin: 0.15,
                        duration: 500.ms,
                        curve: Curves.easeInOut,
                      ),
                ),
                const Divider(color: kGrey, thickness: 0.2),
                gapH10,
                ...List.generate(5, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.black12,
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
                              "Video  dbsfhsdf js dvhf ds fhds fhgds  fds fhgsd ",
                              style: TextStyle(
                                  color: kWhite,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
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
        )));
  }
}
