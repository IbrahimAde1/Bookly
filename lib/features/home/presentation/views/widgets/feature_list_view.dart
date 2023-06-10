import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

import 'feature_list_item.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: ScrollSnapList(
          initialIndex: 0,
          listViewPadding: const EdgeInsets.only(left: 30),
          dynamicItemSize: true,
          itemSize: 60,
          onItemFocus: (index) {},
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>
              const FeatureListItem(play: true, red: 20),
          itemCount: 10),
    );
  }
}
