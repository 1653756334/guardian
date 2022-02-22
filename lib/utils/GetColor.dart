import 'package:flutter/material.dart';

Color GetColorFrom(String color) {
  var s = "ff" + color.substring(1);
  return Color(int.parse(s, radix: 16));
}
