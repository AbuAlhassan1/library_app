import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:library_app/models/auth/profile.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserLoading());

  Future<void> getUserInfo () async {
    emit(UserLoading());
    await Future.delayed(const Duration(seconds: 3));
    emit(UserInitial(userProfileObj: Profile(
      name: "حسن",
      email: "abualhasanbasim@gmail.com",
      phoneNumber: "07812604050",
      userName: "hassan_2000",
      image: "https://instagram.fbgw5-2.fna.fbcdn.net/v/t51.2885-19/412678272_871837784622800_5875941685161323876_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fbgw5-2.fna.fbcdn.net&_nc_cat=108&_nc_ohc=14J52-GOXIkAX938C1w&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfCkNSFkAqRvX6m3bEu4sYfgL1OZvF4kdXFEr7UBsexM8Q&oe=65C48C41&_nc_sid=8b3546"
    )));
  }

}