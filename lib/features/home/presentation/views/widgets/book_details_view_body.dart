import 'package:flutter/material.dart';
import 'package:go_book/features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:go_book/features/home/presentation/views/widgets/featured_item.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
     var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .17),
            child: const FeaturedItem(),
          ),
        ],
      ),
    );
  }
}
