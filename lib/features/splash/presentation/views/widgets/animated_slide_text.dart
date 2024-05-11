import 'package:flutter/material.dart';

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
