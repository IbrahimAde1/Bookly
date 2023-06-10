import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<BookModel>>> fetchNewsetBooks();
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks();
}
