import 'package:flutter/material.dart';
import 'package:go_book/features/home/presentation/views/widgets/featured_item.dart';

class FreaturedListView extends StatelessWidget {
  const FreaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return const FeaturedItem();
        },
      ),
    );
  }
}
