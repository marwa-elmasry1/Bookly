import 'package:bookly/features/Home/data/models/book_model/book_model.dart';

abstract class FeatureBookState {}

class FeatureBookStateInitial extends FeatureBookState{ }
class FeatureBookStateLoading extends FeatureBookState{ }
class FeatureBookStateFailure extends FeatureBookState{ 
  final String errorMessage;
  FeatureBookStateFailure( this.errorMessage);
}
class FeatureBookStateSuccess extends FeatureBookState{ 
  final List<BookModel> books;

  FeatureBookStateSuccess(this.books);
}