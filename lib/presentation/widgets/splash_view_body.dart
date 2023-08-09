import 'package:books_app/core/utilis/routes.dart';
import 'package:books_app/presentation/widgets/sliding_image.dart';
import 'package:books_app/presentation/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';


class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  late Animation<Offset> drobAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
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
        SlidingImage(
            animationController: animationController,
            drobAnimation: drobAnimation),
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
        vsync: this,
        duration: const Duration(
          seconds: 1,
        ));
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 4),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();

    drobAnimation = Tween<Offset>(
            begin: Offset.fromDirection(double.maxFinite), end: Offset.zero)
        .animate(animationController);
  }

  void navigateToHome() {
    Future.delayed(Duration(seconds: 2), () {
      // Get.to(
      //   () => const HomeScreen(),
      //   transition: Transition.fade,
      //   duration: kTranstionDuration,
      // );
    GoRouter.of(context).push(AppRouter.kHomeView);
    },
    );
  }
}
