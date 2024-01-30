// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lpio/theme/my_colors/my_colors_palette.dart';

class MyTextField extends StatefulWidget {
  final String name;
  final String label;
  final String hintText;
  final TextInputType? keyboardType;
  final int? maxLines;
  final List<String? Function(String?)>? validators;
  final String? initialValue;
  final bool isPassword;
  final bool? enabled;

  const MyTextField({
    super.key,
    required this.name,
    required this.label,
    required this.hintText,
    this.keyboardType,
    this.maxLines,
    this.validators,
    this.initialValue,
    this.isPassword = false,
    this.enabled = true,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  late FocusNode focusNode;
  bool isObscured = true;
  String? value;

  @override
  void initState() {
    focusNode = FocusNode();
    focusNode.addListener(() {
      setState(() {
        focusNode = focusNode;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool hasFocus = focusNode.hasFocus;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: GoogleFonts.getFont(
            'Lato',
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            color: myColorsPalette.primary,
            letterSpacing: -0.4,
          ),
        ),
        SizedBox(height: 8.h),
        FormBuilderTextField(
          enabled: widget.enabled!,
          obscureText: widget.isPassword && isObscured,
          initialValue: widget.initialValue,
          maxLines: widget.isPassword ? 1 : widget.maxLines,
          focusNode: focusNode,
          autovalidateMode: AutovalidateMode.disabled,
          name: widget.name,
          style: GoogleFonts.getFont('Lato',
              fontSize: 15,
              fontWeight: hasFocus ? FontWeight.w500 : FontWeight.w400,
              color: myColorsPalette.primary),
          decoration: InputDecoration(
            hintText: widget.hintText,
          ),
          onChanged: (newValue) => setState(() {
            value = newValue;
          }),
          validator:
              FormBuilderValidators.compose([...widget.validators ?? []]),
          keyboardType: widget.keyboardType ?? TextInputType.text,
          textInputAction: TextInputAction.next,
        ),
      ],
    );
  }
}
