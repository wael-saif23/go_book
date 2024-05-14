part of 'new_books_cubit_cubit.dart';

sealed class NewBooksCubitState extends Equatable {
  const NewBooksCubitState();

  @override
  List<Object> get props => [];
}

final class NewBooksCubitInitial extends NewBooksCubitState {}

final class NewBooksCubitLoading extends NewBooksCubitState {}

final class NewBooksCubitSuccess extends NewBooksCubitState {
  final List<BookModel> books;

  const NewBooksCubitSuccess({required this.books});
}

final class NewBooksCubitFailure extends NewBooksCubitState {
  final String error;

  const NewBooksCubitFailure({required this.error});
}
