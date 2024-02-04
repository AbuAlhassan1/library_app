import 'package:library_app/controllers/theme/theme_cubit_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeCubitState> {
  ThemeCubit() : super(ThemeInitial());

  void toggleTheme(){
    if( state == DarkTheme() ){
      emit(LightTheme());
    }else{
      emit(DarkTheme());
    }
  }
}