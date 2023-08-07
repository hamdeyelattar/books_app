import 'package:flutter/material.dart';

import '../../core/utilis/assets.dart';

class SlidingImage extends StatelessWidget {
  const SlidingImage({
    super.key,
    required this.animationController,
    required this.drobAnimation,
  });

  final AnimationController animationController;
  final Animation<Offset> drobAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animationController,
        builder: (context, child) {
          return SlideTransition(
              position: drobAnimation, child: Image.asset(AssetsLogo.logo));
        });
  }
}
