import 'package:flutter/animation.dart';

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
  'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}

class ColorConstant {
  static Color lightPurple = hexToColor("#9b2fd7");
  static Color darkPurple = hexToColor("#4E176C");
  static Color lightOrange = hexToColor("#FF8904");
}