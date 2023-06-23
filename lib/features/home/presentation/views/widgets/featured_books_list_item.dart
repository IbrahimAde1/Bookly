import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/custom_circular_progress.dart';
import '../../../../../core/utils/custom_erorr_massage.dart';
import '../../../data/models/book_model/book_model.dart';

class FeatureListItem extends StatelessWidget {
  const FeatureListItem({super.key, required this.url, required this.book});
  final BookModel book;
  final String url;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: () {
          GoRouter.of(context).push('/detailsView', extra: book);
        },
        child: AspectRatio(
          aspectRatio: 129 / 193,
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            fadeInDuration: const Duration(seconds: 1),
            imageUrl: url,
            placeholder: (context, url) => const CustomCircularProgress(),
            errorWidget: (context, url, error) => CustomErrorText(err: error),
          ),
        ),
      ),
    );
  }
}
