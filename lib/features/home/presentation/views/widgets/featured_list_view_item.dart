import 'package:flutter/material.dart';
import 'package:go_book/core/utils/assets.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.45 / 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(24)),
            image: DecorationImage(
                image: AssetImage(AssetsData.testImage), fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
