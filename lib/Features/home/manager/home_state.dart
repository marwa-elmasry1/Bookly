
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';

abstract class HomeState {}

class HomeInitialState extends HomeState{}
class HomeLoadingState extends HomeState{}
class HomeLoadedState extends HomeState{

  final List<BookModel> books;
  HomeLoadedState ({required this.books});
}
class HomeFauilerState extends HomeState{
  final String error;
  HomeFauilerState({required this.error});
}
