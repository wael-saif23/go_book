import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_book/core/utils/assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Image.asset(AssetsData.logo)
      )
    );
  }
}
