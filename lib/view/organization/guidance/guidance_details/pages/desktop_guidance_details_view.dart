import 'package:flutter/cupertino.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/widget/imageicon/banner_image.dart';

class DesktopGuidanceDetailsView extends StatefulWidget {
  const DesktopGuidanceDetailsView({super.key});

  @override
  State<DesktopGuidanceDetailsView> createState() =>
      _DesktopGuidanceDetailsViewState();
}

class _DesktopGuidanceDetailsViewState
    extends State<DesktopGuidanceDetailsView> {
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 400,
                  decoration: const BoxDecoration(
                    color: darkBlack,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: PaddedColumn(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      children: [
                        gapH20,
                        BannerImg(
                            url: "https://i.imgur.com/MknSctK.png",
                            height: 200,
                            width: double.infinity,
                            fit: BoxFit.cover,
                            borderRadius: BorderRadius.circular(20)),
                        gapH15,
                        const Text("Bench Press Machine",
                            style: TextStyle(
                                color: kWhite,
                                fontSize: 18,
                                fontWeight: FontWeight.w800)),
                        gapH10,
                        const Text(
                            "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful",
                            style: TextStyle(
                                color: kGrey,
                                fontSize: 14,
                                fontWeight: FontWeight.w400)),
                        gapH20,
                        SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor:
                                      const Color.fromRGBO(0, 235, 38, 0.19)),
                              onPressed: () {},
                              icon: const Icon(CupertinoIcons.cloud_download,
                                  color: kGreen),
                              label: const Text(
                                "Downlode QR",
                                style: TextStyle(
                                    color: kGreen,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              )),
                        ),
                        gapH20,
                      ]),
                ),
                gapW40,
                Expanded(
                    child: DecoratedBox(
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
                          padding: const EdgeInsets.only(bottom:15),
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
                )),
              
              ],
            ),
            gapH20,
          ],
        ),
      ),
    );
  }
}
