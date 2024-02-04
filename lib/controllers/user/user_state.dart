part of 'user_cubit.dart';

sealed class UserState extends Equatable {
  const UserState();

  @override
  List<Object> get props => [];
}

class UserInitial extends UserState {
  final Profile userProfileObj;
  const UserInitial({required this.userProfileObj});
}
class UserLoading extends UserState {}
class UserError extends UserState {}