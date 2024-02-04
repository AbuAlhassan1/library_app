import 'package:library_app/models/http_response_model.dart';

abstract class AuthInterface {

  void register();
  Future<HttpResponseModel?> login(String usernameOrEmail, String password);
  void forgetPassword(String usernameOrEmail);
  void getNewToken();

}