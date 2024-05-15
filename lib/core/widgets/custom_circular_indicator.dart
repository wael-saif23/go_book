import 'package:flutter/material.dart';

class CustomCircularIndicator extends StatelessWidget {
  const CustomCircularIndicator({super.key, required this.color});
final Color color;
  @override
  Widget build(BuildContext context) {
    return  Center(child: CircularProgressIndicator(
      color: color,
    ));
  }
}