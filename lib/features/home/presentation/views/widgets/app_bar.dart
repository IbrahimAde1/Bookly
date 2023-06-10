import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../constans.dart';
import 'best_seller_list_item.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.all(20),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Image.asset(Assests.kLogo, width: 100),
        IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: SearchData(),
              );
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
            ))
      ]),
    );
  }
}

class SearchData extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
            close(context, null);
          },
          icon: Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
        itemBuilder: ((context, index) => const BestSellerItem()));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return ListView.builder(
          itemCount: 3,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
          itemBuilder: ((context, index) => const BestSellerItem()));
    } else {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
  }
}
