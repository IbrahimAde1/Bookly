import 'package:bookly_app/features/home/data/cubits/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/custom_circular_progress.dart';
import '../../../../../core/utils/custom_erorr_massage.dart';
import 'featured_books_list_item.dart';

class CustomFeaturedBooksListView extends StatelessWidget {
  const CustomFeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: 190,
            child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: FeatureListItem(
                        url: state.books[index].volumeInfo.imageLinks
                                ?.thumbnail ??
                            'http://books.google.com/books/content?id=6sXACwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api',
                      ),
                    ),
                itemCount: state.books.length),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorText(
            err: state.errMassage,
          );
        } else {
          return const CustomCircularProgress();
        }
      },
    );
  }
}
