import 'package:bookly_app/features/splash/presentation/view/widgets/text_silding_animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../constans.dart';
import '../../../../home/presentation/views/home_view.dart';

class SplashVeiwBody extends StatefulWidget {
  const SplashVeiwBody({super.key});

  @override
  State<SplashVeiwBody> createState() => _SplashVeiwBodyState();
}

class _SplashVeiwBodyState extends State<SplashVeiwBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> sildingAnimation;
  @override
  void initState() {
    super.initState();
    initSliding();
    navigateToHome();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Get.to(() => const HomeView(),
            transition: Transition.fade, duration: kTransitionDuration);
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(Assests.kLogo),
        TextSlideingAnimation(sildingAnimation: sildingAnimation)
      ],
    );
  }

  void initSliding() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    sildingAnimation =
        Tween<Offset>(begin: const Offset(0, 20), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }
}