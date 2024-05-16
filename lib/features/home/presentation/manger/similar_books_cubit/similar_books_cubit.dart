import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:go_book/features/home/data/models/book_model/book_model/book_model.dart';
import 'package:go_book/features/home/data/repos/home_repo.dart';
part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit({ required this.homeRepo, this.category}) : super(SimilarBooksInitial());
    final HomeRepo homeRepo;
    final String? category ;
  Future<void> fetchSimilarBooks() async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold((failure) {
      emit(SimilarBooksFailure(error: failure.errorMessage));
    }, (books) {
      emit(SimilarBooksSuccess(books: books));
    });
  }
}
