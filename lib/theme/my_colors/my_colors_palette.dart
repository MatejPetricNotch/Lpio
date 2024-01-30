import 'package:flutter/material.dart';
import 'package:lpio/theme/my_colors/my_colors.dart';

final myColorsPalette = MyColorsPalette();

class MyColorsPalette extends MyColors {
  @override
  Color get bottomBarBackground => const Color.fromRGBO(252, 252, 252, 0.98);

  @override
  Color get grayDark => const Color.fromRGBO(126, 138, 139, 1);

  @override
  Color get grayExtraLight => const Color.fromRGBO(237, 240, 241, 1);

  @override
  Color get grayLight => const Color.fromRGBO(152, 165, 166, 1);

  @override
  Color get green => const Color.fromRGBO(87, 185, 158, 1);

  @override
  Color get labelGray => const Color.fromRGBO(161, 165, 170, 1);

  @override
  Color get labelGreen => const Color.fromRGBO(87, 185, 158, 1);

  @override
  Color get orange => const Color.fromRGBO(232, 159, 60, 1);

  @override
  Color get red => const Color.fromRGBO(215, 87, 70, 1);

  @override
  Color get textAction => const Color.fromRGBO(48, 62, 79, 1);

  @override
  Color get textHint => const Color.fromRGBO(149, 149, 149, 1);

  @override
  Color get primary => const Color.fromRGBO(33, 37, 41, 1);
}
