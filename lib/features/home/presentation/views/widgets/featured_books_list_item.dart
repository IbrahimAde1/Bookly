import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/custom_circular_progress.dart';
import '../../../../../core/utils/custom_erorr_massage.dart';

class FeatureListItem extends StatelessWidget {
  const FeatureListItem({super.key, required this.url});

  final String url;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: AspectRatio(
        aspectRatio: 129 / 193,
        child: CachedNetworkImage(
          fit: BoxFit.cover,
          fadeInDuration: const Duration(seconds: 1),
          imageUrl: url,
          placeholder: (context, url) => const CustomCircularProgress(),
          errorWidget: (context, url, error) => CustomErrorText(err: error),
        ),
      ),
    );
  }
}
