import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:newflutterproject/core/theming/colors.dart';

class TextStyles{
  static const TextStyle font24Black700Weight =TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w700,
    fontSize: 24
  );
  static const TextStyle font32BlueBold =TextStyle(
    color: ColorsManager.mainBlue,
        fontWeight: FontWeight.bold,
      fontSize: 32
  );
  static const TextStyle font13greyRegular =TextStyle(
      color: ColorsManager.grey,
      fontWeight: FontWeight.normal,
      fontSize: 13
  );
  static const TextStyle font16whiteW500 =TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 16
  );
}