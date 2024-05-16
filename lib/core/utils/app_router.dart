import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_book/core/utils/service_locator.dart';

import 'package:go_book/features/home/data/repos/home_repo_implement.dart';
import 'package:go_book/features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:go_book/features/home/presentation/views/home_view.dart';
import 'package:go_book/features/searsh/presentation/views/search_view.dart';
import 'package:go_book/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/views/book_details_view.dart';

abstract class AppRouter {
  // const AppRouter({this.category});
  // final String? category;
  static String kSplashView = '/';
  static String kHomeView = '/homeView';
  static String kBookDetailsView = '/bookDetailsView';
  static String kSearchView = '/SearchView';
  static final router = GoRouter(routes: [
    GoRoute(
        path: kSplashView,
        builder: (context, state) {
          return const SplashView();
        }),
    GoRoute(
        path: kHomeView,
        builder: (context, state) {
          return const HomeView();
        }),
    GoRoute(
        path: kBookDetailsView,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => SimilarBooksCubit(homeRepo: gitIt.get<HomeRepoImplement>() ),
            child: const BookDetailsView(),
          );
        }),
    GoRoute(
        path: kSearchView,
        builder: (context, state) {
          return const SearchView();
        }),
  ]);
}
