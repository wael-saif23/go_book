import 'package:flutter/material.dart';
import 'package:go_book/constants.dart';
import 'package:go_book/features/home/presentation/views/widgets/best_seller_item.dart';

class BestSellerSliverList extends StatelessWidget {
  const BestSellerSliverList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => const Padding(
          padding: edgeInsetsHorizontal30,
          child: BestSellerItem(),
        ),
      ),
    );
  }
}
