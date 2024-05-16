import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
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
              'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');
      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromException(e));
      }
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }
//Failure
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming');
      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return Right(books);
    } catch (e) {
      
      if (e is DioException) {
        return Left(ServerFailure.fromException(e));
      }
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }
  
  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({String? category}) async{
  try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=relevance&q=computer science');
      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromException(e));
      }
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
