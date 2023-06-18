import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../constans.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/book_model/book_model.dart';
import 'newest_rateing.dart';

class NewestBooksListItem extends StatelessWidget {
  const NewestBooksListItem({
    super.key,
    required this.book,
  });
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () {
        GoRouter.of(context).push('/detailsView');
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: CachedNetworkImage(
                  imageUrl: book.volumeInfo.imageLinks?.thumbnail ??
                      'http://books.google.com/books/content?id=ryTdDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api',
                  height: 120,
                  width: 75,
                  fit: BoxFit.fill,
                ),
              )),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  book.volumeInfo.title!,
                  style: Styles.testStyle20.copyWith(fontFamily: kGTSectrafine),
                ),
              ),
              Text(book.volumeInfo.authors?.first ?? 'none',
                  style: Styles.testStyle14
                      .copyWith(color: Colors.white.withOpacity(0.70))),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Free ',
                    style: Styles.testStyle20
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  NewestRating(
                    rateing: book.volumeInfo.averageRating ?? 0,
                    count: book.volumeInfo.ratingsCount ?? 0,
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
