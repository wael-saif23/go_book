import 'package:flutter/material.dart';
import 'package:go_book/constants.dart';
import 'package:go_book/core/utils/app_router.dart';

import 'package:go_book/core/utils/styles.dart';

import 'package:go_book/features/home/data/models/book_model/book_model/book_model.dart';
import 'package:go_book/features/home/presentation/views/widgets/featured_item.dart';
import 'package:go_router/go_router.dart';

import 'book_rating.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: GestureDetector(
        onTap: () => GoRouter.of(context)
            .push(AppRouter.kBookDetailsView, extra: bookModel),
        child: SizedBox(
          height: 125,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.5 / 4,
                child: FeaturedItem(
                    imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ??
                        kStandardNetworkImage),
              ),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child: Text(
                        bookModel.volumeInfo?.title ?? "No Title",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle20.copyWith(
                          fontFamily: kGtSectraFine,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      bookModel.volumeInfo?.authors?[0] ?? "No Author",
                      style: Styles.textStyle14,
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Text(
                          'Free',
                          style: Styles.textStyle20.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        BookCountPages(
                          pageNumpers: bookModel.volumeInfo?.pageCount ?? 0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
