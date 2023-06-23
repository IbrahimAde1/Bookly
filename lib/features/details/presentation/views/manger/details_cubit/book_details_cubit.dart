import 'package:bookly_app/features/details/data/repo/details_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../../../home/data/models/book_model/book_model.dart';
part 'book_details_state.dart';

class BookDetailsCubit extends Cubit<BookDetailsState> {
  BookDetailsCubit(this.detailsRepo) : super(BookDetailsInitial());

  final DetailsRepo detailsRepo;
  Future<void> fetchDatailsBooks({required String category}) async {
    emit(BookDetailsLoading());
    var result = await detailsRepo.fetchSimilarBooks(category: category);
    result.fold((failure) => emit(BookDetailsFailure(failure.errMassage)),
        (books) => emit(BookDetailsSaccses(books)));
  }
}
