import 'package:flutter/material.dart';
import '../../../../home/data/models/book_model/book_model.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_book_details_button.dart';
import 'custom_book_details_list_view.dart';
import 'custom_text_title_list_view.dart';
import 'item_book_details.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Column(
            children: [
              const CustomBookDetailsAppBar(),
              ItemBookDetails(bookModel: book),
              CustomButtonBookDetails(book: book),
              const Spacer(),
              const TextYouCanAlsoLike(),
              CustomBookDetailsListview(book: book),
            ],
          ),
        )
      ],
    );
  }
}
