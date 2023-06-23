import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../home/data/models/book_model/book_model.dart';
import '../../../../home/presentation/views/widgets/newest_rateing.dart';

class ItemBookDetails extends StatelessWidget {
  const ItemBookDetails({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: AspectRatio(
                aspectRatio: 129 / 193,
                child: CachedNetworkImage(
                    fit: BoxFit.fill,
                    imageUrl:
                        bookModel.volumeInfo.imageLinks?.thumbnail ?? '')),
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          bookModel.volumeInfo.title!,
          style: Styles.testStyle30,
          textAlign: TextAlign.center,
        ),
        Text('${bookModel.volumeInfo.authors![0]}.',
            style: Styles.testStyle14
                .copyWith(color: Colors.white.withOpacity(0.70))),
        NewestRating(
          rateing: bookModel.volumeInfo.averageRating ?? 0,
          count: bookModel.volumeInfo.ratingsCount ?? 0,
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
