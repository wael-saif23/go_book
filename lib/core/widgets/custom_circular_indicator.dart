import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class CustomCircularIndicator extends StatelessWidget {
  const CustomCircularIndicator({super.key, this.color});
final Color? color;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingAnimationWidget.staggeredDotsWave(
        color:color??Colors.blueAccent.withOpacity(.7),
        size: MediaQuery.of(context).size.width * 0.1,
      ))
    //  Center(child: CircularProgressIndicator(
    //   color: color,
    // ))
    ;
  }
}