import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_book/core/utils/assets.dart';
import 'package:go_book/features/home/presentation/views/home_view.dart';
import 'package:go_book/features/splash/presentation/views/widgets/animated_slide_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideAnimation;
  @override
  void initState() {
    super.initState();
    intSlideAnimation();
    futureNavigartToHomeView();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(AssetsData.logo),
        ),
        const Text('Read and buy books', style: TextStyle(fontSize: 15)),
        AnimatedSlideText(slideAnimation: slideAnimation),
        const SizedBox(
          height: 20,
        )
      ],
    ));
  }

  void intSlideAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    slideAnimation =
        Tween<Offset>(begin: const Offset(0, 15), end: const Offset(0, 0))
            .animate(animationController);
    animationController.forward();
  }

    void futureNavigartToHomeView() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(
        const HomeView(),
        transition: Transition.fadeIn,
        duration: const Duration(seconds: 3),
      );
    });
  }
}
