import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../constans.dart';
import '../../../../search/search.dart';

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
