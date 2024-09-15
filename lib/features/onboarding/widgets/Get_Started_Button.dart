import 'package:flutter/material.dart';
import 'package:newflutterproject/core/helpers/extinsions.dart';
import 'package:newflutterproject/core/theming/colors.dart';
import 'package:newflutterproject/core/theming/styles.dart';

import '../../../../core/routing/routes.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(ColorsManager.mainBlue),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: MaterialStateProperty.all(Size(double.infinity, 52)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)))),
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      child:  Text(
        'Get Started',
        style: TextStyles.font16whiteMedium,
      ),
    );
  }
}
