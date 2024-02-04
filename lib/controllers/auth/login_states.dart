abstract class LoginStates {}

class LoginInit extends LoginStates {
  @override
  List<Object?> get props => [];
}

class IsLoggedIn extends LoginStates {
  final bool isLoggedIn;
  IsLoggedIn({this.isLoggedIn = false});
}

class UsernameOrEmailNotValid extends LoginStates {}

class PasswordNotValid extends LoginStates {}

class LoginFormNotValid extends LoginStates {}

class LoginFormValid extends LoginStates {}