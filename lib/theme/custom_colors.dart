import 'dart:ui';

import 'package:flutter/material.dart';

enum CustomColors {
  white,
  blue,
  green,
  grey,
  purple,
}

extension ColorExtension on CustomColors {
  Color get color {
    switch (this) {
      case CustomColors.white:
        return const Color.fromRGBO(255, 255, 255, 1);
      case CustomColors.blue:
        return const Color.fromRGBO(0, 76, 146, 1);
      case CustomColors.green:
        return const Color.fromRGBO(100, 150, 5, 1);
      case CustomColors.grey:
        return const Color.fromRGBO(68, 68, 68, 1);
      case CustomColors.purple:
        return const Color.fromRGBO(159, 43, 104, 1);
    }
  }
}
