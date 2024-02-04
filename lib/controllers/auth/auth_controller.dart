// ignore_for_file: use_build_context_synchronously
import 'package:library_app/controllers/auth/auth_cubit_states.dart';
import 'package:library_app/utils/interfaces/auth_interface.dart';
import 'package:library_app/utils/interfaces/storage_interface.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:library_app/utils/global.dart';

class AuthController extends Cubit<AuthCubitStates> {
  AuthController(): super(AuthInitial());
  
  AuthInterface authRepository = locator.get<AuthInterface>();
  StorageInterFace secureStorage = locator.get<StorageInterFace>();

  Future<bool> getIsLoggedIn (BuildContext context) async {
    return true;
  }

}