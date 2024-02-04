import 'package:library_app/controllers/auth/login_states.dart';
import 'package:library_app/models/textfield_model.dart';
import 'package:library_app/translations/locale_keys.g.dart';
import 'package:library_app/views/constants/regex.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginController extends Cubit<LoginStates> {
  LoginController(): super(LoginInit());

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? usernameOrEmailErrorMessage;
  String? passowrdErrorMessage;
  
  TextFieldDataObject usernameOrEmailTextFieldData = TextFieldDataObject(
    controller: TextEditingController(),
    focusNode: FocusNode(),
    name: "usernameOrEmail",
    key: GlobalKey(),
    hint: LocaleKeys.usernameOrEmail.tr(),
    lable: LocaleKeys.usernameOrEmail.tr(),
    regex: emailRegex,
  );
  TextFieldDataObject passwordTextFieldData = TextFieldDataObject(
    controller: TextEditingController(),
    focusNode: FocusNode(),
    name: "password",
    key: GlobalKey(),
    hint: LocaleKeys.password.tr(),
    lable: LocaleKeys.password.tr(),
    // regex: passwordRegex,
  );


  void validateLoginForm(){
    
    bool isEmailValid = usernameOrEmailTextFieldData.validate(err: "البريد الالكتروني غير صالح!");
    bool isPasswordValid = passwordTextFieldData.validate(err: "كلمة المرور غير صالحة!");

    if( !isEmailValid && !isPasswordValid ){
      emit(LoginFormNotValid());
      return;
    }

    if(!isEmailValid){
      emit(UsernameOrEmailNotValid());
      return;
    }

    if(!isPasswordValid){
      emit(PasswordNotValid());
      return;
    }
    
    emit(LoginFormValid());
    formKey.currentState!.validate();
  }

}