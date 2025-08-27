import 'package:bookly/core/Errors/failure.dart';
import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewestBooksMethod();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooksMethod();
}
