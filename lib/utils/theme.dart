import 'package:flutter/material.dart';

class Data {
  Data._();
  static getTheme(BuildContext context) {
    return Theme.of(context);
  }
}

class Colors {
  Colors._(); // this basically makes it so you can instantiate this class
  static const Color blue = Color(0xff007AFF);
  static const Color grey = Color(0xff979797);
  static const Color grey100 = Color(0xffE4E4E4);
  static const Color grey200 = Color(0xff4C4C4C);
  static const Color orange = Color(0xffED8A19);
  static const Color orange100 = Color(0xffE5DBCF);
  static const Color white100 = Color(0xffE7E7E7);
}
