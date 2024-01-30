import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lpio/theme/my_assets.dart';
import 'package:lpio/theme/my_colors/my_colors_palette.dart';

class HomeTitleWidget extends StatelessWidget {
  const HomeTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
            height: 29.h,
            width: 29.w,
            child: Image.asset(
              MyAssets.images.logo,
              fit: BoxFit.cover,
            )),
        SizedBox(width: 3.w),
        Text(
          'LipoConsole',
          style: GoogleFonts.getFont(
            'Lato',
            fontSize: 16.sp,
            height: 2.4.h,
            fontWeight: FontWeight.w400,
            color: myColorsPalette.textAction,
          ),
        ),
        SizedBox(width: 3.w),
        Text(
          'vDEV',
          style: GoogleFonts.getFont(
            'Lato',
            fontSize: 13.sp,
            fontWeight: FontWeight.w400,
            height: 3.0.h,
            color: myColorsPalette.grayDark,
          ),
        )
      ],
    );
  }
}
