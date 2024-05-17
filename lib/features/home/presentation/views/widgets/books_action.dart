import 'package:flutter/material.dart';
import 'package:go_book/core/utils/function/launch_url.dart';
import 'package:go_book/features/home/data/models/book_model/book_model/book_model.dart';


import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const Expanded(
              child: CustomButton(
            text: 'Free',
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          )),
          Expanded(
              child: CustomButton(
            onPressed: () async {
              launchCustomUr(context ,bookModel.accessInfo?.webReaderLink);
            },
            fontSize: 16,
            text: getText(bookModel),
            backgroundColor: const Color(0xffEF8262),
            textColor: Colors.white,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          )),
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.accessInfo != null) {
      if (bookModel.accessInfo?.webReaderLink == null) {
        return 'Not available';
      } else {
        return 'Preview';
      }
    } else {
      return 'Not available';
    }
  }
}
