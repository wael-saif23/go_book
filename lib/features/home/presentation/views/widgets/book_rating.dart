import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';

class BookCountPages extends StatelessWidget {
  const BookCountPages({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.pageNumpers,
  });
  final int? pageNumpers;

  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.bookOpen,
          size: 14,
          color: Color.fromRGBO(232, 220, 170, 1),
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          pageNumpers.toString(),
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
      ],
    );
  }
}
