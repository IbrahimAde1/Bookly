import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../home/presentation/views/widgets/featured_books_list_item.dart';

class CustomBookDetailsListview extends StatelessWidget {
  const CustomBookDetailsListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 30, bottom: 50),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: InkWell(
              splashColor: Colors.white,
              onTap: () {
                GoRouter.of(context).push('/detailsView');
              },
              child: const FeatureListItem(
                url:
                    'http://books.google.com/books/content?id=6sXACwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api',
              )),
        ),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
      ),
    );
  }
}
