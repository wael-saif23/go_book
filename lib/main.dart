import 'package:flutter/material.dart';
import 'package:go_book/constants.dart';
import 'package:go_book/core/utils/app_router.dart';
import 'package:go_book/core/utils/service_locator.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const GoBook());
}

class GoBook extends StatelessWidget {
  const GoBook({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: KprimaryColors,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        routerConfig: AppRouter.router);
  }
}
