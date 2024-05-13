import 'package:dartz/dartz.dart';
import 'package:go_book/core/errors/failures.dart';
import 'package:go_book/core/utils/api_services.dart';
import 'package:go_book/features/home/data/models/book_model/book_model/book_model.dart';
import 'package:go_book/features/home/data/repos/home_repo.dart';

class HomeRepoImplement implements HomeRepo {
  ApiService apiService;
  HomeRepoImplement({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:programming');
      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return Right(books);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
