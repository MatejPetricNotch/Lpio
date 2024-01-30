// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lpio/features/beacons/domain/ble_client.dart';
import 'package:lpio/theme/my_colors/my_colors_palette.dart';

class MySelectBleClientsField extends StatelessWidget {
  final String name;
  final String label;
  final String hintText;
  final BleClient? initialValue;
  final List<BleClient>? options;

  const MySelectBleClientsField({
    super.key,
    required this.name,
    required this.label,
    required this.hintText,
    this.initialValue,
    required this.options,
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
          initialValue: initialValue,
          autovalidateMode: AutovalidateMode.always,
          validator: FormBuilderValidators.required(
            errorText: 'BLE Client is required',
          ),
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
