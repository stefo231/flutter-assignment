import 'dart:ui';

import 'package:flutter/material.dart';

enum CustomColors {
  white,
  blue,
  green,
  grey,
  purple,
  red,
  progressGrey,
  progressGreen,
  pageIndicatorColor,
}

extension ColorExtension on CustomColors {
  Color get color {
    switch (this) {
      case CustomColors.white:
        return const Color.fromRGBO(255, 255, 255, 1);
      case CustomColors.blue:
        return const Color.fromRGBO(0, 76, 146, 1);
      case CustomColors.green:
        return const Color.fromRGBO(114, 169, 6, 1.0);
      case CustomColors.grey:
        return const Color.fromRGBO(140, 139, 139, 1.0);
      case CustomColors.purple:
        return const Color.fromRGBO(112, 28, 255, 1.0);
      case CustomColors.red:
        return const Color.fromRGBO(157, 29, 61, 1.0);
      case CustomColors.progressGrey:
        return const Color.fromRGBO(227, 222, 224, 1.0);
      case CustomColors.progressGreen:
        return const Color.fromRGBO(75, 240, 53, 1.0);
      case CustomColors.pageIndicatorColor:
        return const Color.fromRGBO(243, 234, 227, 0.8745098039215686);
    }
  }
}
