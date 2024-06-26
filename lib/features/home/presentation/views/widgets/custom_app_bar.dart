import 'package:flutter/material.dart';
import 'package:go_book/core/utils/app_router.dart';

import 'package:go_book/core/utils/assets.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Row(children: [
          Image.asset(
            AssetsData.logoForAppBar,
            width: MediaQuery.of(context).size.width * 0.45,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kSearchView);
            },
            icon: const Icon(Icons.search, size: 28),
          ),
        ]),
      ),
    );
  }
}
