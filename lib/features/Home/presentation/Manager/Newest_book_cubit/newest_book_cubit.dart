import 'package:bookly/features/Home/data/Repos/home_repo.dart';
import 'package:bookly/features/Home/presentation/Manager/Newest_book_cubit/newest_book_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBookCubit extends Cubit<NewestBookState> {
  NewestBookCubit(this.homeRepo) : super(NewestBookStateInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewestdBooks() async {
    emit(NewestBookStateLoading());
    var result = await homeRepo.fetchNewestBooksMethod();
    result.fold(
      (failure) {
        emit(NewestBookStateFailure(failure.errorMessage));
      },
      (books) {
        emit(NewestBookStateSuccess(books));
      },
    );
  }
}
