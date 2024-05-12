import 'package:flutter/material.dart';
import 'package:go_book/core/utils/styles.dart';
import 'package:go_book/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:go_book/features/home/presentation/views/widgets/featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(children: [
        CustomAppBar(),
        FreaturedListView(),
        SizedBox(
          height: 32,
        ),
        Row(
          children: [
            Text("Best Seller", style: Styles.textMediam),
          ],
        ),
      ]),
    );
  }
}
