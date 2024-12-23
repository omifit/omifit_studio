import 'package:omifit_studio/data/home/guidance/model/playlist/create_playlist_model.dart';
import 'package:omifit_studio/utils/utils.dart';
import 'package:omifit_studio/view/organization/guidance/guidance_view_model.dart';

class CreatePlaylistDialog extends ConsumerStatefulWidget {
  const CreatePlaylistDialog({
    super.key,
  });

  @override
  ConsumerState<CreatePlaylistDialog> createState() =>
      _CreatePlaylistDialogState();
}

class _CreatePlaylistDialogState extends ConsumerState<CreatePlaylistDialog> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _playlistNameCtrl = TextEditingController();
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
          "Create New Playlist",
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
                controller: _playlistNameCtrl,
                cursorColor: primaryColor,
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  hintText: 'Playlist Name',
                  hintStyle: const TextStyle(
                    color: kGrey,
                    fontWeight: FontWeight.w400,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (value) =>
                    value!.isEmpty ? 'Please enter Playlist title' : null,
              ),
              gapH25,
              SizedBox(
                width: double.infinity,
                height: 50,
                child: FilledBtn(
                  isLoading: guidanceViewModel.createplaylistloading,
                  text: "Create Playlist",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      guidanceViewModel.createPlaylist(
                          CreatePlaylistReq(
                            title: _playlistNameCtrl.text.trim(),
                            description: "description",
                          ),
                          context);
                    }
                  },
                ),
              ),
              gapH32,
            ],
          ),
        ),
      ),
    );
  }
}
