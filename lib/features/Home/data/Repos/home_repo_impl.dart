import 'package:bookly/core/Errors/failure.dart';
import 'package:bookly/core/utils/api_services.dart';
import 'package:bookly/features/Home/data/Repos/home_repo.dart';
import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl(this.apiServices);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooksMethod() async {
    try {
      Map<String, dynamic> data = await apiServices.get(
        'volumes?Filtering=free-ebooks&sorting=newest &q=subject:programming',
      );
      List<BookModel> books = [];
      for (var book in data['items']) {
        books.add(BookModel.fromJson(book));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioExeption(e));
      }

      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooksMethod()async {
     try {
      Map<String, dynamic> data = await apiServices.get(
        'volumes?Filtering=free-ebooks&q=api',
      );
      List<BookModel> books = [];
      for (var book in data['items']) {
        books.add(BookModel.fromJson(book));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioExeption(e));
      }

      return left(ServerFailure(e.toString()));
    }
  }
}
