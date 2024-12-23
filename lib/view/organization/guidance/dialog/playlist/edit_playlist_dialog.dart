import 'package:cupertino_modal_sheet/cupertino_modal_sheet.dart';
import 'package:flutter/gestures.dart';
import 'package:lottie/lottie.dart';
import 'package:omifit_studio/data/home/guidance/model/playlist/edit_playlist_model.dart';
import 'package:omifit_studio/utils/utils.dart';
import 'package:omifit_studio/view/organization/guidance/guidance_view_model.dart';

class EditPlaylistDialog extends ConsumerStatefulWidget {
  final String playlistid;
  const EditPlaylistDialog({
    super.key,
    required this.playlistid,
  });

  @override
  ConsumerState<EditPlaylistDialog> createState() => _EditPlaylistDialogState();
}

class _EditPlaylistDialogState extends ConsumerState<EditPlaylistDialog> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final GuidanceViewModel guidanceViewModel =
        ref.watch(guidanceViewModelProvider);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: kWhite,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Edit Playlist",
          style: TextStyle(
            color: kWhite,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: darkBlack,
      ),
      backgroundColor: darkBlack,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: PaddedColumn(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            children: [
              gapH40,
              TextFormField(
                controller: _nameCtrl,
                cursorColor: primaryColor,
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: 'Name of Playlist',
                  hintStyle: const TextStyle(
                    color: kGrey,
                    fontWeight: FontWeight.w400,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (value) =>
                    value!.isEmpty ? 'Please enter Plan Name' : null,
              ),
              gapH25,
              SizedBox(
                width: double.infinity,
                height: 50,
                child: FilledBtn(
                  isLoading: guidanceViewModel.editplaylistloading,
                  text: "Update",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      guidanceViewModel.editPlaylist(
                        EditPlaylistReq(
                          title: _nameCtrl.text.trim(),
                          playlistId: widget.playlistid,
                        ),
                        context,
                      );
                    }
                  },
                ),
              ),
              gapH15,
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: "If you want to delete this playlist, ",
                      style: TextStyle(
                        color: kGrey,
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    TextSpan(
                      mouseCursor: WidgetStateMouseCursor.clickable,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          showCupertinoModalSheet(
                              context: context,
                              builder: (context) {
                                return Scaffold(
                                  bottomNavigationBar: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 22, vertical: 20),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 50,
                                      child: FilledBtn(
                                          radius: 50,
                                          color: kRed,
                                          text: "Delete",
                                          onPressed: () {
                                            guidanceViewModel.deletePlaylist(
                                                widget.playlistid, context);
                                          }),
                                    ),
                                  ),
                                  backgroundColor: darkBlack,
                                  appBar: AppBar(),
                                  body: PaddedColumn(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 36),
                                    children: [
                                      Center(
                                        child: LottieBuilder.asset(
                                          'assets/animations/delete_video.json',
                                          width: 300,
                                          height: 300,
                                        ),
                                      ),
                                      gapH12,
                                      const SizedBox(
                                        width: 400,
                                        child: Text(
                                          "If you delete this playlist, all the exercises in this playlist will be deleted. Are you sure you want to delete this playlist?",
                                          style: TextStyle(
                                            color: kGrey,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      const Spacer(),
                                      // SizedBox(
                                      //   width: double.infinity,
                                      //   height: 50,
                                      //   child: FilledBtn(
                                      //       radius: 50,
                                      //       color: kRed,
                                      //       text: "Delete",
                                      //       onPressed: () {
                                      //         guidanceViewModel.deletePlaylist(
                                      //             widget.playlistid, context);
                                      //       }),
                                      // ),
                                    ],
                                  ),
                                );
                              });
                          // showCupertinoDialog(
                          //     context: context,
                          //     builder: (context) {
                          //       return CupertinoAlertDialog(
                          //         insetAnimationCurve: Curves.easeInOut,
                          //         title: const Text("Delete Playlist"),
                          //         content: const Text(
                          //             "If you delete this playlist, all the exercises in this playlist will be deleted. Are you sure you want to delete this playlist?"),
                          //         actions: [
                          //           CupertinoDialogAction(
                          //             isDestructiveAction: true,
                          //             onPressed: () {
                          //               context.pop();
                          //             },
                          //             child: const Text("Cancel"),
                          //           ),
                          //           CupertinoDialogAction(
                          //             child: const Text("Delete"),
                          //             onPressed: () {
                          //               guidanceViewModel.deletePlaylist(
                          //                   widget.playlistid, context);
                          //             },
                          //           ),
                          //         ],
                          //       );
                          //     });
                        },
                      text: "Delete Playlist",
                      style: const TextStyle(
                          color: kRed,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              gapH32,
            ],
          ),
        ),
      ),
    );
  }
}
