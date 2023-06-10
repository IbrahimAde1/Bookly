import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class TextYouCanAlsoLike extends StatelessWidget {
  const TextYouCanAlsoLike({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(bottom: 20, left: 30),
        child: Text('You can also like',
            style: Styles.testStyle14, textAlign: TextAlign.start),
      ),
    );
  }
}
