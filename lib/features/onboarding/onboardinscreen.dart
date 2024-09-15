import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newflutterproject/core/theming/styles.dart';
import 'package:newflutterproject/features/onboarding/widgets/Doctor_Image_And_Text.dart';
import 'package:newflutterproject/features/onboarding/widgets/Get_Started_Button.dart';
import 'package:newflutterproject/features/onboarding/widgets/doc_logo_and_name.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 35.h, bottom: 30.h),
            child: Column(
              children: [
                const DocLogoAndName(),
                SizedBox(
                  height: 35.h,
                ),
                const DoctorImageAndText(),
                SizedBox(height: 30.h,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    children: [
                       Text(
                          'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.'
                      ,style: TextStyles.font14greyRegular,textAlign: TextAlign.center,),
                      SizedBox(height: 30.h,),
                      const GetStartedButton()
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
