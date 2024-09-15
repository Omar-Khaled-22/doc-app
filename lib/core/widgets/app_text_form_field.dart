import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';
import '../theming/styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusedErrorBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String?) validator;

  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.controller,
    required this.validator,
    this.errorBorder,
    this.focusedErrorBorder,
  });


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorsManager.darkerWhite,
        isDense: true,
        contentPadding: contentPadding??  EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        enabledBorder: enabledBorder?? OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide:
                BorderSide(color: ColorsManager.lighterGrey, width: 1.3.w)),

        focusedBorder: focusedBorder?? OutlineInputBorder(
            borderSide: BorderSide(color: ColorsManager.mainBlue, width: 1.3.w),
            borderRadius: BorderRadius.circular(16)),

      errorBorder:errorBorder?? OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1.3.w),
          borderRadius: BorderRadius.circular(16)),

      focusedErrorBorder:focusedErrorBorder?? OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1.3.w),
          borderRadius: BorderRadius.circular(16)),

      hintStyle:hintStyle?? TextStyles.font14greyRegular.copyWith(color:Colors.grey.shade400 ),
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
      obscureText: isObscureText?? false,
      style: inputTextStyle?? const TextStyle(color: Colors.black54),
      validator: (value){
        return validator(value);
      },
    );
  }
}
