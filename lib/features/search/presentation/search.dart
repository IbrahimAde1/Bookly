import 'package:bookly_app/core/utils/custom_circular_progress.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/search/data/repo/search_repo_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/custom_erorr_massage.dart';
import '../../home/presentation/views/widgets/newest_books_list_item.dart';
import 'manger/cubit/search_cubit.dart';

class SearchData extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(getIt.get<SearchRepoImpl>(), query),
      child: BlocBuilder<SearchCubit, SearchState>(
        builder: (context, state) {
          if (state is SearchSuccess) {
            return ListView.builder(
                itemCount: state.bookSearch.length,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                itemBuilder: ((context, index) => NewestBooksListItem(
                      book: state.bookSearch[index],
                    )));
          } else if (state is SearchFailure) {
            return CustomErrorText(
              err: state.err,
            );
          } else {
            return const CustomCircularProgress();
          }
        },
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return ListView.builder(
          itemCount: 3,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
          itemBuilder: ((context, index) => const Text('data')));
      // BestSellerItem(

      //     )));
    } else {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
  }
}
