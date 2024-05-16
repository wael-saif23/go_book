import 'package:flutter/material.dart';
import 'package:go_book/core/utils/app_router.dart';
import 'package:go_router/go_router.dart';


class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: 
            () => GoRouter.of(context)
            .push(AppRouter.kHomeView),
              
              icon: const Icon(Icons.close),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_outlined,
              ),
            )
          ],
        ),
      ),
    );
  }
}
