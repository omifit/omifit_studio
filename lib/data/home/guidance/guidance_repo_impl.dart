import 'package:dartz/dartz.dart';
import 'package:logger/web.dart';
import 'package:omifit/core/api_client.dart';
import 'package:omifit/core/constants.dart';
import 'package:omifit/core/endpoints.dart';
import 'package:omifit/core/exceptions.dart';
import 'package:omifit/data/home/guidance/guidance_repo.dart';
import 'package:omifit/data/home/guidance/model/document/add_document_model.dart';
import 'package:omifit/data/home/guidance/model/document/delete_document_model.dart';
import 'package:omifit/data/home/guidance/model/document/edit_document_model.dart';
import 'package:omifit/data/home/guidance/model/playlist/create_playlist_model.dart';
import 'package:omifit/data/home/guidance/model/playlist/delete_playlist_model.dart';
import 'package:omifit/data/home/guidance/model/playlist/edit_playlist_model.dart';
import 'package:omifit/data/home/guidance/model/playlist/get_playlist_details_model.dart';
import 'package:omifit/data/home/guidance/model/playlist/get_playlist_model.dart';

class GuidanceRepoImpl implements GuidanceRepo {
  final ApiClient _apiClient = ApiClient();
  Logger logger = Logger();

  @override
  Future<Either<ApiException, CreatePlaylistRes>> createPlaylist(
      CreatePlaylistReq req) async {
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}$createplaylisturl",
        createPlaylistReqToJson(req),
      );
      return Right(CreatePlaylistRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, DeletePlaylistRes>> deletePlaylist(
      String playlistid) async {
    try {
      final response = await _apiClient.delete(
        "${AppConstants.baseUrl}${deleteplaylisturl(playlistid)}",
      );
      return Right(DeletePlaylistRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, EditPlaylistRes>> editPlaylist(
      EditPlaylistReq req) async {
    try {
      final response = await _apiClient.put(
        "${AppConstants.baseUrl}$editplaylisturl",
        editPlaylistReqToJson(req),
      );
      return Right(EditPlaylistRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, GetPlaylistRes>> getplaylist() async {
    try {
      final response =
          await _apiClient.post("${AppConstants.baseUrl}$getplaylisturl", null);
      return Right(GetPlaylistRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, GetPlaylistDetailsRes>> getplaylistDetails(
      String playlist) async {
    try {
      final response = await _apiClient.get(
        "${AppConstants.baseUrl}${getplaylistdetailsurl(playlist)}",
      );
      return Right(GetPlaylistDetailsRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, AddDocumentRes>> addDocument(
      AddDocumentReq req) async {
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}$addDocumenturl",
        addDocumentReqToJson(req),
      );
      return Right(AddDocumentRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, EditDocumentRes>> editDocument(
      EditDocumentReq req) async {
    try {
      final response = await _apiClient.put(
        "${AppConstants.baseUrl}$editDocumenturl",
        editDocumentReqToJson(req),
      );
      return Right(EditDocumentRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, DeleteDocumentRes>> removeDocument(
      String docid) async {
    try {
      final response = await _apiClient.delete(
        "${AppConstants.baseUrl}${removeDocumenturl(docid)}",
      );
      return Right(DeleteDocumentRes.fromJson(response.data!));
    } catch (e) {
      logger.e(e);
      return Left(ApiException(e.toString()));
    }
  }
}
