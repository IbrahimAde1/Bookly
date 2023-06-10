import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/feature_list_item.dart';

class CustomBookDetailsListview extends StatelessWidget {
  const CustomBookDetailsListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 30, bottom: 50),
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: FeatureListItem(play: false, red: 5),
        ),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
      ),
    );
  }
}
