import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';

class NewestRating extends StatelessWidget {
  const NewestRating({super.key, required this.rateing, required this.count});
  final num rateing;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star_rounded,
          color: Color(0xffffdd4f),
        ),
        Text(
          rateing.toString(),
          style: Styles.testStyle16,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          count.toString(),
          style: Styles.testStyle14
              .copyWith(color: Colors.white.withOpacity(0.70)),
        ),
      ],
    );
  }
}
