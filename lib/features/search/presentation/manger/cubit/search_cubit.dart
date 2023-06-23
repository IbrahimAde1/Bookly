import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../home/data/models/book_model/book_model.dart';
import '../../../data/repo/search_repo.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo, this.word) : super(SearchInitial());
  final String word;
  final SearchRepo searchRepo;
  Future<void> fetchNewsetBooks() async {
    emit(SearchLoading());
    var result = await searchRepo.searchBooks(word: word);

    result.fold((failure) => emit(SearchFailure(failure.errMassage)),
        (books) => emit(SearchSuccess(books)));
  }
}
