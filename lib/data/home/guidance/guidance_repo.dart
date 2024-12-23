import 'package:dartz/dartz.dart';
import 'package:omifit_studio/core/exceptions.dart';
import 'package:omifit_studio/data/home/guidance/model/document/add_document_model.dart';
import 'package:omifit_studio/data/home/guidance/model/document/delete_document_model.dart';
import 'package:omifit_studio/data/home/guidance/model/document/edit_document_model.dart';
import 'package:omifit_studio/data/home/guidance/model/playlist/create_playlist_model.dart';
import 'package:omifit_studio/data/home/guidance/model/playlist/delete_playlist_model.dart';
import 'package:omifit_studio/data/home/guidance/model/playlist/edit_playlist_model.dart';
import 'package:omifit_studio/data/home/guidance/model/playlist/get_playlist_details_model.dart';
import 'package:omifit_studio/data/home/guidance/model/playlist/get_playlist_model.dart';

abstract class GuidanceRepo {
  Future<Either<ApiException, CreatePlaylistRes>> createPlaylist(
      CreatePlaylistReq req);
  Future<Either<ApiException, DeletePlaylistRes>> deletePlaylist(
      String playlistid);
  Future<Either<ApiException, EditPlaylistRes>> editPlaylist(
      EditPlaylistReq req);
  Future<Either<ApiException, GetPlaylistRes>> getplaylist();
  Future<Either<ApiException, GetPlaylistDetailsRes>> getplaylistDetails(
      String playlistid);
  Future<Either<ApiException, AddDocumentRes>> addDocument(AddDocumentReq req);
  Future<Either<ApiException, DeleteDocumentRes>> removeDocument(String docid);
  Future<Either<ApiException, EditDocumentRes>> editDocument(
      EditDocumentReq req);
}
