part of 'category_cubit.dart';

sealed class CategoryState extends Equatable {
  const CategoryState();

  @override
  List<Object> get props => [];
}

class CategoryInitial extends CategoryState {
  final List<Category> categoriesObj;
  const CategoryInitial(this.categoriesObj);
}
class CategoryLoading extends CategoryState {}
class CategoryError extends CategoryState {}
