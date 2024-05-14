import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:go_book/features/home/data/models/book_model/book_model/book_model.dart';
import 'package:go_book/features/home/data/repos/home_repo.dart';

part 'new_books_cubit_state.dart';

class NewBooksCubitCubit extends Cubit<NewBooksCubitState> {
  NewBooksCubitCubit(this.homeRepo) : super(NewBooksCubitInitial());
   final HomeRepo homeRepo;

  Future<void> fetchNewBooks() async {
    emit(NewBooksCubitLoading());
    var result = await homeRepo.fetchNewBooks();
    result.fold((failure) {
      emit(NewBooksCubitFailure(error: failure.errorMessage));
    }, (books) {
      emit(NewBooksCubitSuccess(books: books));
    });
  }
}
