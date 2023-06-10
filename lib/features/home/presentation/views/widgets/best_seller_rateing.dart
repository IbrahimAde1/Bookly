import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BestSellerRating extends StatelessWidget {
  const BestSellerRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star_rounded,
          color: Color(0xffffdd4f),
        ),
        const Text(
          '4.8',
          style: Styles.testStyle16,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          '(2390)',
          style: Styles.testStyle14
              .copyWith(color: Colors.white.withOpacity(0.70)),
        ),
      ],
    );
  }
}
