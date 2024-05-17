import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.error});
final String error;
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration:  BoxDecoration(
        color: Colors.grey.withOpacity(.5),
        borderRadius: BorderRadius.circular(8),

      ),
      child: Center(
        child: Text(error,textAlign: TextAlign.center,),
      ),
    );
  }
}