import 'package:flutter/material.dart';
import 'package:go_book/constants.dart';
import 'package:go_book/core/utils/assets.dart';

abstract class Styles {
  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const textStyle20 = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.normal,
      fontFamily: AssetsData.fontGTSectraFine);
  static const textStyle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w900,
    fontFamily: kGtSectraFine,
    letterSpacing: 1.2,
  );
}

const TextStyle textStyle = TextStyle();
