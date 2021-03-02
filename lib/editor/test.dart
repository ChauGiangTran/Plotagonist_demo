import 'package:flutter/material.dart';
import '../utils/theme.dart' as Theme;

class MyTextController extends TextEditingController {
  String text = '@Robin goes to the #cliffs';
  @override
  TextSpan buildTextSpan({TextStyle style, bool withComposing}) {
    List<InlineSpan> children = [];

    if (text.contains('#')) {
      children.add(TextSpan(
          style: TextStyle(color: Theme.Colors.grey200),
          text: text.substring(
            0,
            text.indexOf('#'),
          )));
      children.add(TextSpan(text: text.substring(text.indexOf('#'))));
    } else {
      children.add(
          TextSpan(style: TextStyle(color: Theme.Colors.grey200), text: text));
    }

    return TextSpan(style: style, children: children);
  }
}
