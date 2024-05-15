import 'package:flutter/material.dart';
import 'package:go_book/features/home/presentation/views/widgets/featured_item.dart';

class SimilarBooksListview extends StatelessWidget {
  const SimilarBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: FeaturedItem(imageUrl: "https://islandpress.org/files/default_book_cover_2015.jpg",),
            );
          }),
    );
  }
}
