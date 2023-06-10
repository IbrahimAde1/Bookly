import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'best_seller_nav_bar.dart';
import 'app_bar.dart';
import 'best_seller_list_view.dart';
import 'feature_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomAppBar(),
                  const CustomListView(),
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 20),
                    child: Text(
                      'Best Seller',
                      textAlign: TextAlign.left,
                      style: Styles.testStyle18
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            const SliverFillRemaining(
              child: BestSellerListView(),
            )
          ],
        ),
        Positioned(
          bottom: 20,
          left: MediaQuery.of(context).size.width / 5,
          right: MediaQuery.of(context).size.width / 5,
          child: const CustomBottomNavigationBar(),
        )
      ],
    );
  }
}
