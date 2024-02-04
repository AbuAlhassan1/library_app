import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:library_app/models/categories/category_model.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit() : super(CategoryLoading());

  Future<void> getCategories () async {
    emit(CategoryLoading());
    await Future.delayed(const Duration(seconds: 3));
    emit(CategoryInitial(categoriesFromJson(jsonEncode([
      {
        "id": "0",
        "name": "fantasy",
        "lable": "خيال",
      },
      {
        "id": "1",
        "name": "horror",
        "lable": "رعب",
      },
      {
        "id": "2",
        "name": "psycnology",
        "lable": "علم نفس",
      },
      {
        "id": "3",
        "name": "romance",
        "lable": "رومانسي",
      },
      {
        "id": "4",
        "name": "religion",
        "lable": "دين",
      },
      {
        "id": "5",
        "name": "art",
        "lable": "فن",
      },
    ]))));
  }

}
