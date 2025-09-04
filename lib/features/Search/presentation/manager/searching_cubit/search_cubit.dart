import 'package:bookly/features/Search/Repo/search_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final SearchRepo searchRepository;

  SearchCubit(this.searchRepository) : super(SearchInitial());

  Future<void> searchBooks(String query) async {
    if (query.trim().isEmpty) {
      emit(SearchInitial());
      return;
    }

    emit(SearchLoading());
    final result = await searchRepository.searchBooks(query);
    result.fold(
      (failure) => emit(SearchFailure(failure.errorMessage)),
      (books) => emit(SearchSuccess(books)),
    );
  }
}
