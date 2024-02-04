import 'package:dio/dio.dart';

class HttpResponseModel {
  Response? response;
  DioException? errorMessage;

  HttpResponseModel(this.response, this.errorMessage);
}