import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newflutterproject/core/theming/styles.dart';
import 'package:newflutterproject/core/widgets/app_text_button.dart';
import 'package:newflutterproject/core/widgets/app_text_form_field.dart';
import 'package:newflutterproject/features/login/data/models/login_request_body.dart';
import 'package:newflutterproject/features/login/logic/login_cubit.dart';
import 'package:newflutterproject/features/login/widgets/already_have_account.dart';
import 'package:newflutterproject/features/login/widgets/email_password.dart';
import 'package:newflutterproject/features/login/widgets/login_bloc_listener.dart';
import 'package:newflutterproject/features/login/widgets/terms_and_conditions_text.dart';

import '../../../core/helpers/Spacing.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  // final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back",
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpacing(8),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.font14greyRegular,
                ),
                verticalSpacing(36),
                Column(
                  children: [
                    const EmailAndPassword(),
                    verticalSpacing(24),
                    Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          'Forgot Password ?',
                          style: TextStyles.font13BlueRegular,
                        )),
                    verticalSpacing(40),
                    AppTextButton(
                      buttonText: 'Login',
                      textStyle: TextStyles.font16WhiteSemiBold,
                      onPressed: () {
                        validateThenLogin(context);
                      },
                    ),
                    verticalSpacing(16),
                    const TermsAndConditionsText(),
                    verticalSpacing(60),
                    const AlreadyHaveAccountText(),
                    const LoginBlocListener(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates(LoginRequestBody(
          email: context.read<LoginCubit>().emailController.text,
          password: context.read<LoginCubit>().passwordController.text),
      );
    }
  }
}
