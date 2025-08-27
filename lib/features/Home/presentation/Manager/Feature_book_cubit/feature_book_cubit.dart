import 'package:bookly/features/Home/data/Repos/home_repo.dart';
import 'package:bookly/features/Home/presentation/Manager/Feature_book_cubit/feature_book_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureBookCubit extends Cubit<FeatureBookState> {
  FeatureBookCubit(this.homeRepo) : super(FeatureBookStateInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeatureBookStateLoading());
    var result = await homeRepo.fetchFeaturedBooksMethod();
    result.fold(
      (failure) {
        emit(FeatureBookStateFailure(failure.errorMessage));
      },
      (books) {
        emit(FeatureBookStateSuccess(books));
      },
    );
  }
}
