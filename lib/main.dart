import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_book/constants.dart';
import 'package:go_book/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const GoBook());
}

class GoBook extends StatelessWidget {
  const GoBook({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: KprimaryColors),
      home: const SplashView(),
    );
  }
}
