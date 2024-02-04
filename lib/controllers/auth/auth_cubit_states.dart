// ignore_for_file: must_be_immutable
import 'package:equatable/equatable.dart';

abstract class AuthCubitStates extends Equatable {}

class AuthInitial implements AuthCubitStates {

  @override
  List<Object?> get props => [];

  @override
  bool? get stringify => true;

}

class AuthLoading implements AuthCubitStates {

  @override
  List<Object?> get props => [];

  @override
  bool? get stringify => true;

}

class AuthError implements AuthCubitStates {

  String? msg;

  AuthError(this.msg);

  @override
  List<Object?> get props => [];

  @override
  bool? get stringify => true;

}

class Authenticated implements AuthCubitStates {

  String? msg;
  Authenticated(this.msg);

  @override
  List<Object?> get props => [];

  @override
  bool? get stringify => true;
}

class NotAuthenticated implements AuthCubitStates {

  @override
  List<Object?> get props => [];

  @override
  bool? get stringify => true;
}