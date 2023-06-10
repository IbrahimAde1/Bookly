import 'package:flutter/material.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_book_details_button.dart';
import 'custom_book_details_list_view.dart';
import 'custom_text_title_list_view.dart';
import 'item_book_details.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          fillOverscroll: false,
          child: Column(
            children: [
              CustomBookDetailsAppBar(),
              ItemBookDetails(),
              CustomButtonBookDetails(),
              Spacer(),
              TextYouCanAlsoLike(),
              CustomBookDetailsListview(),
            ],
          ),
        )
      ],
    );
  }
}
