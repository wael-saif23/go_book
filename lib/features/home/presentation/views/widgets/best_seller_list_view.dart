import 'package:flutter/material.dart';
import 'package:go_book/features/home/presentation/views/widgets/best_seller_item.dart';

// تم استبدالها ب sliver list
class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return const BestSellerItem();
      },
    );
  }
}
