import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:library_app/models/book/book_model.dart';

part 'book_state.dart';

class BookCubit extends Cubit<BookState> {
  BookCubit() : super(BookLoading());

  Future<void> getBooks () async {
    emit(BookLoading());

    await Future.delayed(const Duration(seconds: 5));

    emit(BookInitial(booksFromJson(jsonEncode([
      {
        "id": "0",
        "name": "الطبيعة البشرية والسلوك الانساني",
        "lable": "الطبيعة البشرية والسلوك الانساني",
        "description": "الطبيعة البشرية والسلوك الانساني",
        "image": "https://i.pinimg.com/564x/71/16/5a/71165abae4e64ac0f38e58396869f22f.jpg",
      },
      {
        "id": "1",
        "name": "قلق السعي إلى المكانة – الشعور بالرضا أو المهانة",
        "lable": "قلق السعي إلى المكانة – الشعور بالرضا أو المهانة",
        "description": "الطبيعة البشرية والسلوك الانساني",
        "image": "https://www.arageek.com/_next/image?url=https%3A%2F%2Fcdn.arageek.com%2Fmagazine%2F4388a492-e471-4eff-914c-9e9031979017.png&w=640&q=75",
      },
      {
        "id": "2",
        "name": "لغة الجسد في مقر العمل",
        "lable": "لغة الجسد في مقر العمل",
        "description": "لغة الجسد في مقر العمل",
        "image": "https://www.arageek.com/_next/image?url=https%3A%2F%2Fcdn.arageek.com%2Fmagazine%2F6c8474b4-74a8-4bbc-8456-14828eed4eb2.png&w=1920&q=75",
      },
      {
        "id": "3",
        "name": "لا تستطيع إفساد يومي: 52 نداء يقظة لقلب أيّ موقف رأسًا على عقب",
        "lable": "لا تستطيع إفساد يومي: 52 نداء يقظة لقلب أيّ موقف رأسًا على عقب",
        "description": "لا تستطيع إفساد يومي: 52 نداء يقظة لقلب أيّ موقف رأسًا على عقب",
        "image": "https://www.arageek.com/_next/image?url=https%3A%2F%2Fcdn.arageek.com%2Fmagazine%2F96221bb8-0dd3-4e02-9243-32c4be84a3be.png&w=1920&q=75",
      },
    ]))));
  }
}
