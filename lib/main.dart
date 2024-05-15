import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_book/constants.dart';
import 'package:go_book/core/utils/app_router.dart';
import 'package:go_book/core/utils/service_locator.dart';
import 'package:go_book/features/home/data/repos/home_repo_implement.dart';
import 'package:go_book/features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:go_book/features/home/presentation/manger/new_books_cubit/new_books_cubit_cubit.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const GoBook());
}

class GoBook extends StatelessWidget {
  const GoBook({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => FeaturedBooksCubit(
            homeRepo: gitIt.get<HomeRepoImplement>()
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (BuildContext context) => NewBooksCubit(
            homeRepo: gitIt.get<HomeRepoImplement>(),
          ),
        ),
      ],
      child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: KprimaryColors,
              textTheme:
                  GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
          routerConfig: AppRouter.router),
    );
  }
}
