import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:logger/web.dart';
import 'package:omifit/core/exceptions.dart';
import 'package:omifit/services/shared_preference_service.dart';

class ApiClient {
  final Dio dio = Dio();
  // ApiClient() {
  //   dio.options.connectTimeout = const Duration(milliseconds: 5000);
  //   dio.options.receiveTimeout = const Duration(milliseconds: 3000);
  // }

  Future<Response<Map<String, dynamic>>> post(
    String path,
    dynamic data,
  ) async {
    final String? token = SharedPreferenceService.getString('token');

    try {
      return await dio.post(
        path,
        data: data,
        options: Options(headers: {"Authorization": "Bearer $token"}),
      );
    } on DioException catch (e) {
      throw ApiException(e.response!.data["message"].toString());
    }
  }

  Future<Response<Map<String, dynamic>>> put(String path, dynamic data) async {
    final String? token = SharedPreferenceService.getString('token');
    try {
      return await dio.put(
        path,
        data: data,
        options: Options(headers: {"Authorization": "Bearer $token"}),
      );
    } on DioException catch (e) {
      throw ApiException(e.response!.data["message"].toString());
    }
  }

  Future<Response<Map<String, dynamic>>> delete(String path) async {
    final String? token = SharedPreferenceService.getString('token');
    try {
      return await dio.delete(
        path,
        options: Options(headers: {"Authorization": "Bearer $token"}),
      );
    } on DioException catch (e) {
      throw ApiException(e.response!.data["message"].toString());
    }
  }

  Future<Response<Map<String, dynamic>>> get(String path) async {
    final String? token = SharedPreferenceService.getString('token');
    try {
      return await dio.get(
        path,
        options: Options(headers: {"Authorization": "Bearer $token"}),
      );
    } on DioException catch (e) {
      throw ApiException(e.response!.data["message"].toString());
    }
  }

  // patch method
  Future<Response<Map<String, dynamic>>> patch(
    String path,
    dynamic data,
  ) async {
    final String? token = SharedPreferenceService.getString('token');
    try {
      return await dio.patch(
        path,
        data: data,
        options: Options(headers: {"Authorization": "Bearer $token"}),
      );
    } on DioException catch (e) {
      throw ApiException(e.response!.data["message"].toString());
    }
  }
}

class MultiPartClient extends http.BaseClient {
  final http.Client _httpClient = http.Client();

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    request.persistentConnection = false;
    request.headers["Content-Type"] = "application/json";
    Logger().i(request.headers);
    Logger().i(request.url);
    return _httpClient.send(request);
  }
}
