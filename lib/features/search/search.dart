import 'package:flutter/material.dart';

class SearchData extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
            close(context, null);
          },
          icon: const Icon(Icons.close))
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
        itemBuilder: ((context, index) => Text('jhgj')

            // BestSellerItem(

            //     )
            ));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return ListView.builder(
          itemCount: 3,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
          itemBuilder: ((context, index) => Text('bhj')));
      // BestSellerItem(

      //     )));
    } else {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
  }
}
