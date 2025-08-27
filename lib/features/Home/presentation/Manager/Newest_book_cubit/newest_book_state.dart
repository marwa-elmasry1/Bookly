import 'package:bookly/features/Home/data/models/book_model/book_model.dart';

abstract class NewestBookState {}

class NewestBookStateInitial extends NewestBookState{ }
class NewestBookStateLoading extends NewestBookState{ }
class NewestBookStateFailure extends NewestBookState{ 
  final String errorMessage;
  NewestBookStateFailure( this.errorMessage);
}
class NewestBookStateSuccess extends NewestBookState{ 
  final List<BookModel> books;

  NewestBookStateSuccess(this.books);
}