import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newflutterproject/core/theming/colors.dart';
import 'package:newflutterproject/core/theming/fontweighthelper.dart';

class TextStyles{
  static  TextStyle font24BlackBold =TextStyle(
    color: Colors.black,
    fontWeight: FontWeightHelper.bold,
    fontSize: 24.sp
  );
  static  TextStyle font32BlueBold =TextStyle(
    color: ColorsManager.mainBlue,
        fontWeight: FontWeightHelper.bold,
      fontSize: 32.sp
  );
  static  TextStyle font24BlueBold =TextStyle(
      color: ColorsManager.mainBlue,
      fontWeight: FontWeightHelper.bold,
      fontSize: 24.sp
  );
  static  TextStyle font13greyRegular =TextStyle(
      color: ColorsManager.grey,
      fontWeight: FontWeightHelper.regular,
      fontSize: 13.sp
  );

  static  TextStyle font14greyRegular =TextStyle(
      color: ColorsManager.grey,
      fontWeight: FontWeightHelper.regular,
      fontSize: 14.sp );

  static  TextStyle font14LightGreyRegular =TextStyle(
      color: ColorsManager.lighterGrey,
      fontWeight: FontWeightHelper.regular,
      fontSize: 14.sp
  );

  static  TextStyle font14DarkBlueMedium =TextStyle(
      color: ColorsManager.darkBlue,
      fontWeight: FontWeightHelper.medium,
      fontSize: 14.sp
  );
  static  TextStyle font16WhiteSemiBold =TextStyle(
      color:Colors.white,
      fontWeight: FontWeightHelper.semiBold,
      fontSize: 16.sp
  );

  static  TextStyle font13BlueRegular =TextStyle(
      color: ColorsManager.mainBlue,
      fontWeight: FontWeightHelper.regular,
      fontSize: 13.sp
  );

  static  TextStyle font15DarkBlueMedium =TextStyle(
      color: ColorsManager.darkBlue,
      fontWeight: FontWeightHelper.medium,
      fontSize: 15.sp
  );
  static  TextStyle font14BlueSemibold =TextStyle(
      color: ColorsManager.mainBlue,
      fontWeight: FontWeightHelper.semiBold,
      fontSize: 14.sp
  );




  static  TextStyle font16whiteMedium =TextStyle(
      color: Colors.white,
      fontWeight: FontWeightHelper.medium,
      fontSize: 16.sp
  );
}