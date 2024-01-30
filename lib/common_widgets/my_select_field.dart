// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lpio/theme/my_colors/my_colors_palette.dart';

class MySelectField extends StatelessWidget {
  final String name;
  final String label;
  final String hintText;
  final String? initialValue;
  final List<String>? options;

  const MySelectField({
    super.key,
    required this.name,
    required this.label,
    required this.hintText,
    this.initialValue,
    this.options,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.getFont(
            'Lato',
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            color: myColorsPalette.primary,
            letterSpacing: -0.4,
          ),
        ),
        SizedBox(height: 8.h),
        FormBuilderDropdown(
          decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.never,
              hintText: hintText),
          name: name,
          items: (options ?? [])
              .map((option) => DropdownMenuItem(
                    value: option,
                    child: Text(
                      option,
                    ),
                  ))
              .toList(),
        ),
      ],
    );
  }
}
