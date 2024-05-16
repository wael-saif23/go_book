import 'package:dartz/dartz.dart';
import 'package:go_book/core/errors/failures.dart';
import 'package:go_book/features/home/data/models/book_model/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({String? category});
}
//Failure