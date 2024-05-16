import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_book/features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:go_book/features/home/presentation/views/widgets/similar_books_section.dart';
import 'books_details_sectioni.dart';
import 'package:go_book/features/home/data/models/book_model/book_model/book_model.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                BookDetailsSection(
                  bookModel: bookModel,
                ),
                const Expanded(
                  child: SizedBox(
                    height: 30,
                  ),
                ),
                const SimilarBooksSection(),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
