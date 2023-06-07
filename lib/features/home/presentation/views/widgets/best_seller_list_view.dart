import 'package:flutter/material.dart';

import 'best_seller_list_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
        itemBuilder: ((context, index) => const BestSellerItem()));
  }
}
