import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            padding: const EdgeInsets.only(left: 30),
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(
              Icons.close,
              size: 30,
            )),
        IconButton(
            onPressed: () {},
            padding: const EdgeInsets.only(right: 30),
            icon: const Icon(
              Icons.shopping_cart_rounded,
              size: 30,
            )),
      ],
    ));
  }
}
