import 'package:library_app/utils/interfaces/auth_interface.dart';
import 'package:library_app/utils/interfaces/http_request_interface.dart';
import 'package:library_app/utils/interfaces/storage_interface.dart';
import 'package:library_app/utils/repositories/auth_repository.dart';
import 'package:library_app/utils/repositories/http_request_repository.dart';
import 'package:library_app/utils/repositories/secure_storage_repository.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setup(){
  locator.registerLazySingleton<HttpRequestInterFace>(() => HttpRequestRepository());
  locator.registerLazySingleton<AuthInterface>(() => AuthRepository());
  locator.registerLazySingleton<StorageInterFace>(() => SecureStorageRepository());
}