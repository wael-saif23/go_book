import 'package:dartz/dartz.dart';
import 'package:go_book/core/errors/failures.dart';
import 'package:go_book/features/home/data/models/book_model/book_model/book_model.dart';
import 'package:go_book/features/home/data/repos/home_repo.dart';

class HomeRepoImplement implements HomeRepo{
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellersBooks() {
    // TODO: implement fetchBestSellersBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}