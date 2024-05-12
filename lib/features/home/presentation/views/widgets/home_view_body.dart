import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_book/core/utils/styles.dart';
import 'package:go_book/features/home/presentation/views/widgets/best_seller_list_view.dart';

import 'package:go_book/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:go_book/features/home/presentation/views/widgets/featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: CustomAppBar(),
          ),
          FreaturedListView(),
          SizedBox(
            height: 36,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Best Seller", style: Styles.textStyle18)),
          ),
          SizedBox(
            height: 24,
          ),
        ]),
      ),
      SliverFillRemaining(child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: BestSellerListView(),
      ))
    ]);
  }
}
