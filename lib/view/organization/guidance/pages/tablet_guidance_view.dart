import 'package:cupertino_modal_sheet/cupertino_modal_sheet.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/organization/guidance/dialog/playlist/create_playlist_dialog.dart';
import 'package:omifit/view/organization/guidance/dialog/playlist/playlist_details_dialog.dart';
import 'package:omifit/view/organization/guidance/guidance_view_model.dart';
import 'package:omifit/view/organization/guidance/widget/guidance_add.dart';
import 'package:omifit/view/organization/guidance/widget/guidance_card.dart';

class TabletGuidanceView extends ConsumerStatefulWidget {
  const TabletGuidanceView({super.key});

  @override
  ConsumerState<TabletGuidanceView> createState() => _TabletGuidanceViewState();
}

class _TabletGuidanceViewState extends ConsumerState<TabletGuidanceView> {
  @override
  Widget build(BuildContext context) {
    final GuidanceViewModel guidanceViewModel =
        ref.watch(guidanceViewModelProvider);
    return Scaffold(
        body: SingleChildScrollView(
      child: PaddedColumn(
        padding: const EdgeInsets.symmetric(vertical: 16),
        children: [
          AlignedGridView.count(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 2,
            mainAxisSpacing: 25,
            crossAxisSpacing: 25,
            itemCount:
                (guidanceViewModel.getplaylistRes?.body?.playlists?.length ??
                        0) +
                    1,
            itemBuilder: (context, index) {
              return index == 0
                  ? GuidanceAddBtn(onPressed: () {
                      showCupertinoModalSheet(
                          context: context,
                          builder: (context) {
                            return const CreatePlaylistDialog();
                          });
                    })
                  : GuidanceCard(
                      tittle: guidanceViewModel.getplaylistRes?.body
                              ?.playlists?[index - 1].title ??
                          "No title",
                      onPressed: () {
                        HapticFeedback.lightImpact();
                        showCupertinoModalSheet(
                            context: context,
                            builder: (context) {
                              return PlaylistDetailsDialog(guidanceViewModel
                                      .getplaylistRes
                                      ?.body
                                      ?.playlists?[index - 1]
                                      .id ??
                                  "");
                            });
                      },
                    );
            },
          ),
        ],
      ),
    ));
  }
}
