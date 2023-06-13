import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/cubits/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
