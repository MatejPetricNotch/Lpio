// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lpio/features/beacons/domain/ble_client.dart';
import 'package:lpio/theme/my_colors/my_colors_palette.dart';

class ZoneBleClientsField extends StatelessWidget {
  final String name;
  final String label;
  final String hintText;
  final BleClient? initialValue;
  final List<BleClient>? options;
  final void Function(BleClient?) onChanged;

  const ZoneBleClientsField(
      {super.key,
      required this.name,
      required this.label,
      required this.hintText,
      this.initialValue,
      required this.options,
      required this.onChanged});

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
          onChanged: (value) => onChanged(value),
          initialValue: initialValue,
          autovalidateMode: AutovalidateMode.always,
          decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.never,
              hintText: hintText),
          name: name,
          items: ((options) ?? [])
              .map((option) => DropdownMenuItem(
                    value: option,
                    child: Text(
                      option.name,
                    ),
                  ))
              .toList(),
        ),
      ],
    );
  }
}
