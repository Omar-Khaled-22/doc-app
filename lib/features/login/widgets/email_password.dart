import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newflutterproject/features/login/logic/login_cubit.dart';
import 'package:newflutterproject/features/login/widgets/password_validation.dart';
import '../../../core/helpers/Spacing.dart';
import '../../../core/helpers/app_regex.dart';
import '../../../core/widgets/app_text_form_field.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  // final formKey = GlobalKey<FormState>();
   bool hasNumber= false;
   bool hasSpecialCharacters=false;
   bool hasLowerCase=false;
   bool hasUpperCase=false;
   bool hasMinLength=false;

  bool isObscureText = true;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    setupPasswordControllerListener();
  }
  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters = AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<LoginCubit>().formKey,
        child: Column(
          children: [
            AppTextFormField(
              hintText: 'Email',
              validator: (value) {
                if (value == null || value.isEmpty  || !AppRegex.isEmailValid(value)) {
                  return 'please enter a valid email';
                }
              },
              controller: context.read<LoginCubit>().emailController,
            ),
            verticalSpacing(18),
            AppTextFormField(

              controller: passwordController,
              hintText: 'Password',
              isObscureText: isObscureText,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isObscureText = !isObscureText;
                  });
                },
                child: Icon(
                  isObscureText ? Icons.visibility_off : Icons.visibility,
                  color: Colors.blue,
                ),

              ),
              validator: (value) {
                if (value == null || value.isEmpty || !AppRegex.isPasswordValid(value)) {
                  return 'please enter a valid password';
                }
              },
            ),
            PasswordValidation(
              hasNumber: hasNumber,
              hasSpecialCharacters: hasSpecialCharacters,
              hasLowerCase: hasLowerCase,
              hasUpperCase: hasUpperCase,
              hasMinLength: hasMinLength,),
          ],
        ));
  }
  @override
  void dispose(){
    passwordController.dispose();
    super.dispose();
  }
}


