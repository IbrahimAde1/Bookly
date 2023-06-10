import 'package:flutter/material.dart';
import 'package:glass/glass.dart';
import '../../../../../constans.dart';

class FeatureListItem extends StatelessWidget {
  const FeatureListItem({super.key, required this.play, required this.red});
  final bool play;
  final double red;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 129 / 193,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(red),
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(Assests.kBook1)),
        ),
        alignment: Alignment.bottomRight,
        child: play == true
            ? Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromRGBO(255, 255, 255, 0.3),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.play_arrow,
                        size: 20,
                        color: ThemeData.dark().colorScheme.onPrimary),
                  ),
                ).asGlass(
                    blurX: 4,
                    blurY: 4,
                    clipBorderRadius: BorderRadius.circular(50)))
            : const SizedBox(),
      ),
    );
  }
}
