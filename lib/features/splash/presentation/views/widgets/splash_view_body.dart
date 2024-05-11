import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_book/core/utils/assets.dart';

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
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    slideAnimation =
        Tween<Offset>(begin: const Offset(0, 15), end: const Offset(0, 0))
            .animate(animationController);
            animationController.forward();
  
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
}

class AnimatedSlideText extends StatelessWidget {
  const AnimatedSlideText({
    super.key,
    required this.slideAnimation,
  });

  final Animation<Offset> slideAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (context, child) {
        return SlideTransition(
            position: slideAnimation,
            child:
                const Text('Loading...', style: TextStyle(fontSize: 10)));
      },
      animation: slideAnimation,
    );
  }
}
