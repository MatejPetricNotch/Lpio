import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lpio/theme/my_colors/my_colors_palette.dart';

class BeaconItem extends StatelessWidget {
  final String title;
  final String data;
  const BeaconItem({
    super.key,
    required this.title,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.getFont(
            'Lato',
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: myColorsPalette.textHint,
            letterSpacing: -0.24,
          ),
        ),
        SizedBox(width: 70.w),
        Expanded(
          child: Text(
            data,
            style: GoogleFonts.getFont(
              'Lato',
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: myColorsPalette.textAction,
              letterSpacing: -0.24,
            ),
            maxLines: 2,
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );
  }
}
