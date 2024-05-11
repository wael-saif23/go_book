import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_book/core/utils/assets.dart';
class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});
                                          
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(
          flex: 1,
        ),
        Center(
          child: Image.asset(AssetsData.logo),
        ),
        const Spacer(
          flex: 1,
        ),
        const Text('Read and buy books', style: TextStyle(fontSize: 15)),
        const Text('Loading...', style: TextStyle(fontSize: 10)),
        const SizedBox(
          height: 20,
        )
      ],
    ));
  }
}
