import 'dart:developer';
import 'package:library_app/models/http_response_model.dart';
import 'package:library_app/utils/global.dart';
import 'package:library_app/utils/interfaces/auth_interface.dart';
import 'package:library_app/utils/interfaces/http_request_interface.dart';

class AuthRepository implements AuthInterface {

  final HttpRequestInterFace httpRequest = locator.get<HttpRequestInterFace>();

  @override
  Future<HttpResponseModel?> login(String usernameOrEmail, String password) async {
    HttpResponseModel? response;
    try{
      response = await locator.get<HttpRequestInterFace>().post<Map>(
        path: "/account/authenticate",
        contentType: "application/json",
        payload: {
          "userNameOrEmailAddress": usernameOrEmail,
          "password": password,
          "rememberMe": true
        }
      );
    }catch (error){
      log(error.toString());
    }

    return response;
  }

  @override
  Future<void> register() async {
    // TODO: implement register
  }

  @override
  Future<void> forgetPassword(String usernameOrEmail) async {
    // TODO: implement forgetPassword
  }

  @override
  Future<void> getNewToken() async {
    // TODO: implement getNewToken
  }
}