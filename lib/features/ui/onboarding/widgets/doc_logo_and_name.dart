import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theming/styles.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [SvgPicture.asset('assets/svg/docdoc_logo.svg'),
      SizedBox(width: 10.w,),
      Text('Docdoc',style: TextStyles.font24Black700Weight,)],
    );
  }
}
