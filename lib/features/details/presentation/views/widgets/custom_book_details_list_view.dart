import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/custom_circular_progress.dart';
import '../../../../../core/utils/custom_erorr_massage.dart';
import '../../../../home/data/models/book_model/book_model.dart';
import '../../../../home/presentation/views/widgets/featured_books_list_item.dart';
import '../manger/details_cubit/book_details_cubit.dart';

class CustomBookDetailsListview extends StatelessWidget {
  const CustomBookDetailsListview({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: BlocBuilder<BookDetailsCubit, BookDetailsState>(
        builder: (context, state) {
          if (state is BookDetailsSaccses) {
            return ListView.builder(
              padding: const EdgeInsets.only(left: 30, bottom: 50),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: InkWell(
                    splashColor: Colors.white,
                    onTap: () {
                      GoRouter.of(context).push('/detailsView', extra: book);
                    },
                    child: FeatureListItem(
                      book: state.similarBooks[index],
                      url: state.similarBooks[index].volumeInfo.imageLinks
                              ?.thumbnail ??
                          'http://books.google.com/books/content?id=B-3ANNNleH0C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api',
                    )),
              ),
              scrollDirection: Axis.horizontal,
              itemCount: state.similarBooks.length,
            );
          } else if (state is BookDetailsFailure) {
            return CustomErrorText(err: state.error);
          } else {
            return const CustomCircularProgress();
          }
        },
      ),
    );
  }
}
