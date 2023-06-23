import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/models/book_model/book_model.dart';

abstract class SearchRepo {
  Future<Either<Failures, List<BookModel>>> searchBooks({required String word});
}
