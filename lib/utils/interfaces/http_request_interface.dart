import 'package:library_app/models/http_response_model.dart';
import 'package:dio/dio.dart';

abstract class HttpRequestInterFace {
  static String baseUrl = "http://159.223.25.119";

  Future<Response?> get({required String path, Options? headers, Map<String, dynamic>? queryParameters, ResponseType? responseType});
  Future<HttpResponseModel> post<T>({required String path, Options? headers, T? payload, String? contentType, ResponseType? responseType});
  Future<Response?> update<T>({required String path, Options? headers, T? payload});
  Future<Response?> delete<T>({required String path, Options? headers, T? payload});
}