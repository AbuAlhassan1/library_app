// ignore_for_file: must_be_immutable
import 'package:equatable/equatable.dart';


abstract class ThemeCubitState extends Equatable {}

class ThemeInitial extends ThemeCubitState {
  @override
  List<Object?> get props => [];

  @override
  bool? get stringify => false;
}

class DarkTheme extends ThemeCubitState {
  @override
  List<Object?> get props => [];

  @override
  bool? get stringify => false;
}

class LightTheme extends ThemeCubitState {
  @override
  List<Object?> get props => [];

  @override
  bool? get stringify => false;
}