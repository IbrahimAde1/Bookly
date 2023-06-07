import 'package:flutter/material.dart';
import 'package:glass/glass.dart';

import '../../../../../constans.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: AspectRatio(
        aspectRatio: 129 / 193,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(Assests.kBook1)),
          ),
          alignment: Alignment.bottomRight,
          child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromRGBO(255, 255, 255, 0.3),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.play_arrow,
                      size: 20, color: ThemeData.dark().colorScheme.onPrimary),
                ),
              ).asGlass(
                  blurX: 4,
                  blurY: 4,
                  clipBorderRadius: BorderRadius.circular(50))),
        ),
      ),
    );
  }
}
