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
}
