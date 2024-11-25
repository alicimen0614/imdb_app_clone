import 'package:flutter/material.dart';

class Const {
  static late Size screenSize;
  static late double minSize;
  static int mainColor = 0xFFF5C518;

  static void init(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    minSize = screenSize.width * 0.03;
  }
}
