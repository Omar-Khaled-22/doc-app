import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newflutterproject/core/theming/styles.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svg/low_opacity_doc_logo.svg'),
        Container(
          child: Image.asset('assets/images/onboarding_doctor.png'),
          foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.white, Colors.white.withOpacity(0.0)],
                  stops: const [0.14, 0.4])),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 10,
          child: Text(
            'Best Doctor\nAppointment App',
            textAlign: TextAlign.center,
            style: TextStyles.font32BlueBold.copyWith(height: 1.5),
          ),
        )
      ],
    );
  }
}
