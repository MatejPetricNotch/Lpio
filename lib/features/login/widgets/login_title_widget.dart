import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lpio/theme/my_assets.dart';
import 'package:lpio/theme/my_colors/my_colors_palette.dart';

class LoginTitleWidget extends StatelessWidget {
  const LoginTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
            height: 54.h,
            width: 54.w,
            child: Image.asset(
              MyAssets.images.logo,
              fit: BoxFit.cover,
            )),
        SizedBox(height: 20.h),
        Text(
          'Sign in',
          style: GoogleFonts.getFont(
            'Lato',
            fontSize: 32.sp,
            fontWeight: FontWeight.w700,
            color: myColorsPalette.primary,
          ),
        ),
      ],
    );
  }
}
