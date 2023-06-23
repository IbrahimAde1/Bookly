import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../constans.dart';
import '../../../../search/presentation/search.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key, this.word});
  final String? word;
  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  void initState() {
    super.initState();
  }

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
                query: widget.word,
              );
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
            ))
      ]),
    );
  }
}
