import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/custom_circular_progress.dart';
import '../../../../../core/utils/custom_erorr_massage.dart';
import '../../manger/newest_books_cubit/newest_books_cubit.dart';
import 'newest_books_list_item.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
              itemCount: state.books.length,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
              itemBuilder: ((context, index) => NewestBooksListItem(
                    book: state.books[index],
                  )));
        } else if (state is NewestBooksFailure) {
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
