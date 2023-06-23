import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/models/book_model/book_model.dart';

abstract class DetailsRepo {
  Future<Either<Failures, List<BookModel>>> fetchSimilarBooks(
      {required String category});
}
