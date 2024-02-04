import 'dart:developer';
import 'package:library_app/models/http_response_model.dart';
import 'package:library_app/utils/global.dart';
import 'package:library_app/utils/interfaces/http_request_interface.dart';
import 'package:library_app/utils/interfaces/storage_interface.dart';
import 'package:dio/dio.dart';

class HttpRequestRepository implements HttpRequestInterFace {

  @override
  String get baseUrl => "http://159.223.25.119";

  Dio dio = Dio(BaseOptions(baseUrl: "http://159.223.25.119/api"));
  StorageInterFace storage = locator.get<StorageInterFace>();

  @override
  Future<Response?> get({required String path, Options? headers, Map<String, dynamic>? queryParameters, ResponseType? responseType}) async {
 
    String? token = await storage.read("userInfo");
    if( token != null ){
      // UserProfile userProfile = userProfileFromJson(token);
      dio.options.headers = {
        // 'Authorization': 'Bearer ${userProfile.accessToken}',
        "Accept-Language": "ar",
        'X-Requested-With': 'XMLHttpRequest',
      };
    }else{
      dio.options.headers = {
        'Authorization': 'Bearer ',
        'X-Requested-With': 'XMLHttpRequest',
      };
    }

    dio.options.method = "GET";
    // dio.options.contentType = "application/json";
    if(responseType != null){
      dio.options.responseType = responseType;
    }else{
      dio.options.responseType = ResponseType.json;
    }
    
    Response? response;

    try{
      response = await dio.request(path, queryParameters: queryParameters);
    } catch(error){
      log(error.toString());
      rethrow;
    }

    return response;
  }

  @override
  Future<HttpResponseModel> post<T>({
    required String path,
    Options? headers,
    String? contentType,
    T? payload,
    ResponseType? responseType
  }) async {
    log("1");
    String? token = await storage.read("userInfo");
    if( token != null ){
      // UserProfile userProfile = userProfileFromJson(token);
      dio.options.headers = {
        // 'Authorization': 'Bearer ${userProfile.accessToken}',
        "Accept-Language": "ar",
        'X-Requested-With': 'XMLHttpRequest',
      };
    }else{
      dio.options.headers = {
        'Authorization': 'Bearer ',
        'X-Requested-With': 'XMLHttpRequest',
      };
    }

    dio.options.method = "POST";
    dio.options.contentType = contentType?? "application/json";
    if(responseType != null){
      dio.options.responseType = responseType;
    }else{
      dio.options.responseType = ResponseType.json;
    }
    
    Response? response;
    log("2");
    try{
      log("3");
      response = await dio.request(path, data: payload);
    } on DioException catch(error){
      log("4");
      return HttpResponseModel(response, error);
    }
    log("5");

    return HttpResponseModel(response, null);
  }

  @override
  Future<Response?> update<T>({required String path, Options? headers, T? payload}) async {
    return null;
  }

  @override
  Future<Response?> delete<T>({required String path, Options? headers, T? payload}) async {
    return null;
  }

}