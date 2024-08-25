import 'package:flutter/material.dart';
import 'package:newflutterproject/core/theming/colors.dart';
import 'package:newflutterproject/core/theming/styles.dart';

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
      onPressed: () {},
      child: const Text(
        'Get Started',
        style: TextStyles.font16whiteW500,
      ),
    );
  }
}
