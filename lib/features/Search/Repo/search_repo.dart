import 'package:bookly/core/Errors/failure.dart';
import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/core/utils/api_services.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepo {
  final ApiServices apiServices;
  SearchRepo(this.apiServices);

  Future<Either<Failure, List<BookModel>>> searchBooks(String query) async {
    try {
      final data = await apiServices.get(
        'volumes?Filtering=free-ebooks&q=$query',
      );

      final books = (data['items'] as List)
          .map((item) => BookModel.fromJson(item))
          .toList();

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioExeption(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
