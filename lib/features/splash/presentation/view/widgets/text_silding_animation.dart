import 'package:flutter/material.dart';

class TextSlideingAnimation extends StatelessWidget {
  const TextSlideingAnimation({
    super.key,
    required this.sildingAnimation,
  });

  final Animation<Offset> sildingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: sildingAnimation,
        builder: (context, _) {
          return SlideTransition(
              position: sildingAnimation,
              child: const Text(
                'Books For Free',
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
              ));
        });
  }
}
