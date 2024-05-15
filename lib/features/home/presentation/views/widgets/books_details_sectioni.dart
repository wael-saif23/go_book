import 'package:flutter/material.dart';
import 'package:go_book/core/utils/styles.dart';
import 'package:go_book/features/home/presentation/views/widgets/featured_item.dart';
import 'book_rating.dart';
import 'books_action.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * .2,
          ),
          child: const FeaturedItem(imageUrl: "https://islandpress.org/files/default_book_cover_2015.jpg",),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Practical flutter',
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 24,
        ),
        const BooksAction(),
      ],
    );
  }
}
