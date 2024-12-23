import 'package:flutter/cupertino.dart';
import 'package:omifit_studio/data/home/guidance/guidance_repo_impl.dart';
import 'package:omifit_studio/data/home/guidance/model/document/add_document_model.dart';
import 'package:omifit_studio/data/home/guidance/model/document/edit_document_model.dart';
import 'package:omifit_studio/data/home/guidance/model/playlist/create_playlist_model.dart';
import 'package:omifit_studio/data/home/guidance/model/playlist/edit_playlist_model.dart';
import 'package:omifit_studio/data/home/guidance/model/playlist/get_playlist_details_model.dart';
import 'package:omifit_studio/data/home/guidance/model/playlist/get_playlist_model.dart';
import 'package:omifit_studio/utils/utils.dart';

final guidanceViewModelProvider =
    ChangeNotifierProvider((ref) => GuidanceViewModel(ref: ref));

class GuidanceViewModel extends ChangeNotifier {
  Ref ref;
  GuidanceViewModel({required this.ref});
  final _guidanceRepo = GuidanceRepoImpl();

  //! Playlist

  // create playlist
  bool _createplaylistloading = false;
  bool get createplaylistloading => _createplaylistloading;

  Future<void> createPlaylist(CreatePlaylistReq req, BuildContext ctx) async {
    _createplaylistloading = true;
    notifyListeners();
    await _guidanceRepo.createPlaylist(req).then((value) {
      value.fold((l) {}, (r) {
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(r.message ?? "")));
        ctx.pop();
        getPlaylist(ctx);
      });

      _createplaylistloading = false;
      notifyListeners();
    });
  }

  // get playlist
  GetPlaylistRes? _getplaylistRes;
  GetPlaylistRes? get getplaylistRes => _getplaylistRes;

  bool _getplaylistloading = false;
  bool get getplaylistloading => _getplaylistloading;

  Future<void> getPlaylist(BuildContext ctx) async {
    _getplaylistloading = true;
    notifyListeners();
    await _guidanceRepo.getplaylist().then((value) {
      value.fold((l) {}, (r) {
        _getplaylistRes = r;
        notifyListeners();
      });
      _getplaylistloading = false;
      notifyListeners();
    });
  }

  // edit playlist
  bool _editplaylistloading = false;
  bool get editplaylistloading => _editplaylistloading;

  Future<void> editPlaylist(EditPlaylistReq req, BuildContext ctx) async {
    _editplaylistloading = true;
    notifyListeners();
    await _guidanceRepo.editPlaylist(req).then((value) {
      value.fold((l) {}, (r) {
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(r.message ?? "")));
        ctx.pop();
        getPlaylist(ctx);
        getPlaylistDetails(req.playlistId!, ctx);
      });
      _editplaylistloading = false;
      notifyListeners();
    });
  }

  // delete playlist

  Future<void> deletePlaylist(String playlistid, BuildContext ctx) async {
    BuildContext? dcontext;
    notifyListeners();
    showCupertinoDialog(
      context: ctx,
      barrierDismissible: true,
      builder: (BuildContext context) {
        dcontext = context;
        return SizedBox(
          width: 100,
          height: 100,
          child: CupertinoDialogAction(
            child: Container(
              height: 60,
              width: 80,
              decoration: BoxDecoration(
                color: lightBlack,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const CupertinoActivityIndicator(
                radius: 13,
              ),
            ),
          ),
        );
      },
    );
    await _guidanceRepo.deletePlaylist(playlistid).then((value) {
      notifyListeners();
      dcontext!.pop();
      value.fold((l) {}, (r) {
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(r.message ?? "")));
        ctx.pop();
        ctx.pop();
        ctx.pop();
        getPlaylist(ctx);
      });
    });
  }

  // get playlist details
  GetPlaylistDetailsRes? _getplaylistdetailsRes;
  GetPlaylistDetailsRes? get getplaylistdetailsRes => _getplaylistdetailsRes;

  bool _getplaylistdetailsloading = false;
  bool get getplaylistdetailsloading => _getplaylistdetailsloading;

  Future<void> getPlaylistDetails(String playlistid, BuildContext ctx) async {
    _getplaylistdetailsloading = true;
    notifyListeners();
    await _guidanceRepo.getplaylistDetails(playlistid).then((value) {
      value.fold((l) {}, (r) {
        _getplaylistdetailsRes = r;
        notifyListeners();
      });
      _getplaylistdetailsloading = false;
      notifyListeners();
    });
  }

  //! Document
  bool _adddocumentloading = false;
  bool get adddocumentloading => _adddocumentloading;

  Future<void> addDocument(AddDocumentReq req, BuildContext ctx) async {
    _adddocumentloading = true;
    notifyListeners();
    await _guidanceRepo.addDocument(req).then((value) {
      value.fold((l) {}, (r) {
        ctx.pop();
        getPlaylistDetails(req.playlistId!, ctx);
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(r.message ?? "")));
      });
      _adddocumentloading = false;
      notifyListeners();
    });
  }

  bool _deletedocumentloading = false;
  bool get deletedocumentloading => _deletedocumentloading;

  Future<void> deleteDocument(
      String docid, String playlistid, BuildContext ctx) async {
    _deletedocumentloading = true;
    notifyListeners();
    await _guidanceRepo.removeDocument(docid).then((value) {
      value.fold((l) {}, (r) {
        getPlaylistDetails(playlistid, ctx);
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(r.message ?? "")));
      });
      _deletedocumentloading = false;
      notifyListeners();
    });
  }

  bool _editdocumentloading = false;
  bool get editdocumentloading => _editdocumentloading;

  Future<void> editDocument(EditDocumentReq req, BuildContext ctx) async {
    _editdocumentloading = true;
    notifyListeners();
    await _guidanceRepo.editDocument(req).then((value) {
      value.fold((l) {}, (r) {
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(r.message ?? "")));
      });
      _editdocumentloading = false;
      notifyListeners();
    });
  }
}
