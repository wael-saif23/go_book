import 'package:flutter/material.dart';
import 'package:go_book/constants.dart';
import 'package:go_book/core/utils/styles.dart';
import 'package:go_book/features/home/data/models/book_model/book_model/book_model.dart';
import 'package:go_book/features/home/presentation/views/widgets/featured_item.dart';
import 'book_rating.dart';
import 'books_action.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * .2,
          ),
          child: FeaturedItem(
            imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ??
                kStandardNetworkImage,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          bookModel.volumeInfo?.title ?? 'No Title',
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 2,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            bookModel.volumeInfo?.authors?[0] ?? 'No Auther',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        BookCountPages(
          pageNumpers: bookModel.volumeInfo?.pageCount ?? 0,
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
