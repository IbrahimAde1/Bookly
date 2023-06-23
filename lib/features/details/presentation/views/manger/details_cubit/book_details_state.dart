part of 'book_details_cubit.dart';

abstract class BookDetailsState extends Equatable {
  const BookDetailsState();

  @override
  List<Object> get props => [];
}

class BookDetailsInitial extends BookDetailsState {}

class BookDetailsLoading extends BookDetailsState {}

class BookDetailsSaccses extends BookDetailsState {
  final List<BookModel> similarBooks;

  const BookDetailsSaccses(this.similarBooks);
}

class BookDetailsFailure extends BookDetailsState {
  final String error;

  const BookDetailsFailure(this.error);
}
