import 'package:library_app/controllers/l10n/l10n_cubit_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class L10nCubit extends Cubit<L10nCubitStates> {
  L10nCubit() : super(L10nInitialState());
}