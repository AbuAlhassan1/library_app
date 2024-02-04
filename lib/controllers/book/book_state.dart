part of 'book_cubit.dart';

sealed class BookState extends Equatable {
  const BookState();

  @override
  List<Object> get props => [];
}

class BookInitial extends BookState {
  final List<Book> books;
  const BookInitial(this.books);
}
class BookLoading extends BookState {}
class BookError extends BookState {}
