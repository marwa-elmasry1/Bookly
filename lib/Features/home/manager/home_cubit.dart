import 'package:bookly/Core/utils/api_services.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/manager/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState>{
  final ApiServices apiServices;
  HomeCubit(this.apiServices) :super(HomeInitialState());

  Future<void> loadBooks()async{

    emit(HomeLoadingState());
    try {
      final data = await apiServices.getData('?Filtring=free-ebooks&q=subject:');
      final List<BookModel> books = (data['items'] as List)
        .map((item) => BookModel.fromJson(item))
        .toList();
      emit(HomeLoadedState(books: books));
    } catch (e) {
      emit(HomeFauilerState(error: e.toString()));
    }
  }

  
}