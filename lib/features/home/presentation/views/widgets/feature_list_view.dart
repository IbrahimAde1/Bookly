import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

import 'feature_list_item.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ScrollSnapList(
          initialIndex: 0,
          listViewPadding: const EdgeInsets.symmetric(horizontal: 30),
          dynamicItemSize: true,
          itemSize: MediaQuery.of(context).size.height * 0.50,
          onItemFocus: (p0) {},
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const CustomItem(),
          itemCount: 10),
    );
  }
}
