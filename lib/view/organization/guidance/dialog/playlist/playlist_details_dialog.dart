import 'package:cupertino_modal_sheet/cupertino_modal_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/organization/guidance/dialog/document/add_document_dialog.dart';
import 'package:omifit/view/organization/guidance/dialog/playlist/edit_playlist_dialog.dart';
import 'package:omifit/view/organization/guidance/guidance_view_model.dart';

class PlaylistDetailsDialog extends ConsumerStatefulWidget {
  final String playlistid;
  const PlaylistDetailsDialog(this.playlistid, {super.key});

  @override
  ConsumerState<PlaylistDetailsDialog> createState() =>
      _PlaylistDetailsDialogState();
}

class _PlaylistDetailsDialogState extends ConsumerState<PlaylistDetailsDialog> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _getData();
    });
  }

  void _getData() {
    ref
        .read(guidanceViewModelProvider)
        .getPlaylistDetails(widget.playlistid, context);
  }

  @override
  Widget build(BuildContext context) {
    final GuidanceViewModel guidanceViewModel =
        ref.watch(guidanceViewModelProvider);

    return Scaffold(
        backgroundColor: darkBlack,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              CupertinoIcons.back,
              color: kWhite,
            ),
            onPressed: () {
              context.pop();
            },
          ),
          title: Text(
              guidanceViewModel.getplaylistdetailsRes?.body?.playlist?.title ??
                  "",
              style: const TextStyle(
                color: kWhite,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              )),
          actions: [
            TextButton(
              onPressed: () {
                showCupertinoModalSheet(
                    context: context,
                    builder: (context) {
                      return EditPlaylistDialog(playlistid: widget.playlistid);
                    });
              },
              child: const Text(
                "Edit",
                style: TextStyle(
                  color: kRed,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            gapW10
          ],
        ),
        body: guidanceViewModel.getplaylistdetailsloading
            ? const Center(
                child: CupertinoActivityIndicator(
                radius: 13,
              ))
            : SingleChildScrollView(
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
                                color: Color.fromARGB(196, 255, 255, 255),
                                fontSize: 16,
                                fontWeight: FontWeight.w400)),
                        trailing: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                    padding: Responsive.isMobile(context)
                                        ? const EdgeInsets.all(8)
                                        : const EdgeInsets.all(15),
                                    elevation: 0,
                                    backgroundColor:
                                        kyellowbg.withOpacity(0.1)),
                                onPressed: () {
                                  showCupertinoModalSheet(
                                      context: context,
                                      builder: (context) {
                                        return AddDocumentDialog(
                                            playlistid: widget.playlistid);
                                      });
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
                      ...List.generate(
                          guidanceViewModel.getplaylistdetailsRes?.body
                                  ?.documents?.length ??
                              0, (index) {
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
                                    icon: guidanceViewModel
                                                .getplaylistdetailsRes
                                                ?.body
                                                ?.documents?[index]
                                                .contentType ==
                                            "Video"
                                        ? const Icon(
                                            CupertinoIcons.play,
                                            color: kRed,
                                            size: 20,
                                          )
                                        : const Icon(
                                            CupertinoIcons.doc,
                                            color: kBlue,
                                            size: 20,
                                          )),
                                Expanded(
                                  child: Text(
                                    guidanceViewModel.getplaylistdetailsRes
                                            ?.body?.documents?[index].title ??
                                        "",
                                    style: const TextStyle(
                                      color: Color.fromARGB(223, 249, 249, 249),
                                      fontSize: 14,
                                      fontFamily: 'Roboto',
                                    ),
                                    maxLines: 2,
                                  ),
                                ),
                                // IconButton(
                                //   visualDensity: VisualDensity.compact,
                                //   padding: EdgeInsets.zero,
                                //   icon: const Icon(
                                //     Icons.edit,
                                //     color: secondaryColor,
                                //     size: 18,
                                //   ),
                                //   onPressed: () {
                                //     showCupertinoModalSheet(
                                //         context: context,
                                //         builder: (context) {
                                //           return const EditDocumentDialog();
                                //         });
                                //   },
                                // ),
                                IconButton(
                                  visualDensity: VisualDensity.compact,
                                  padding: EdgeInsets.zero,
                                  icon: const Icon(
                                    CupertinoIcons.delete,
                                    color: kRed,
                                    size: 18,
                                  ),
                                  onPressed: () {
                                    guidanceViewModel.deleteDocument(
                                        guidanceViewModel.getplaylistdetailsRes
                                                ?.body?.documents?[index].id ??
                                            "",
                                        widget.playlistid,
                                        context);
                                  },
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
