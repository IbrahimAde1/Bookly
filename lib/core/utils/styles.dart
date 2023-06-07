import 'package:bookly_app/constans.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static const testStyle18 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );
  static const testStyle20 = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 20,
  );
  static const testStyle30 = TextStyle(
      fontWeight: FontWeight.w900, fontSize: 30, fontFamily: kGTSectrafine);
  static const testStyle14 = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 14,
  );
  static const testStyle16 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );
  static var subTitle =
      TextStyle(fontSize: 14, color: Colors.white.withOpacity(0.70));
}
