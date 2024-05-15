import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:go_book/core/utils/api_services.dart';

import 'package:go_book/features/home/data/repos/home_repo_implement.dart';

final gitIt = GetIt.instance;

void setupServiceLocator() {
  gitIt.registerSingleton<ApiService>(ApiService( Dio()));
  gitIt.registerSingleton<HomeRepoImplement>(
      HomeRepoImplement(apiService: gitIt.get<ApiService>()));
}
