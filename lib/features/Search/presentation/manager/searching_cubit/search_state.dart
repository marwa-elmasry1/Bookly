import 'package:bookly/features/Home/data/models/book_model/book_model.dart';

abstract class SearchState {}

class SearchInitial extends SearchState {}

class SearchLoading extends SearchState {}

class SearchFailure extends SearchState {
  final String errorMessage;
  SearchFailure(this.errorMessage);
}

class SearchSuccess extends SearchState {
  final List<BookModel> books;
  SearchSuccess(this.books);
}