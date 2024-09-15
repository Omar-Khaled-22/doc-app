import 'package:flutter/material.dart';
import 'package:newflutterproject/core/helpers/Spacing.dart';
import 'package:newflutterproject/core/theming/colors.dart';
import 'package:newflutterproject/core/theming/styles.dart';

class PasswordValidation extends StatelessWidget {
  final bool hasNumber;
  final bool hasSpecialCharacters;
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasMinLength;

  const PasswordValidation({super.key,
    required this.hasNumber,
    required this.hasSpecialCharacters,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasMinLength});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
         buildValidationRow('At least 1 lowercase letter',hasLowerCase),
    verticalSpacing(2),
      buildValidationRow('At least 1 uppercase letter',hasUpperCase),
      verticalSpacing(2),
      buildValidationRow('At least 1 number ',hasNumber),
      verticalSpacing(2),
      buildValidationRow('At least 1 special character ',hasSpecialCharacters),
      verticalSpacing(2),
      buildValidationRow('At least  8 characters long ',hasMinLength),

    ],
    );
  }
}

Widget buildValidationRow(String text, bool hasValidated) {
  return Row(children: [
    const CircleAvatar(backgroundColor: ColorsManager.grey,
      radius: 2.5,),
    horizontalSpacing(6),
    Text(text,style: TextStyles.font13BlueRegular.copyWith(
      decoration: hasValidated ? TextDecoration.lineThrough : null,
      decorationColor: Colors.green,
      decorationThickness: 2,
      color: hasValidated ? Colors.grey : ColorsManager.darkBlue,

    ))


  ],);
}

