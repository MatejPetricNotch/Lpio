import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final myTheme = MyTheme();

class MyTheme {
  ThemeData get theme => ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.cyanAccent,
        ),
        inputDecorationTheme: InputDecorationTheme(
          contentPadding:
              EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
          border: OutlineInputBorder(
              borderSide: BorderSide(
                color: const Color.fromRGBO(150, 161, 174, 1),
                width: 1.w,
              ),
              borderRadius: BorderRadius.circular(4.r)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: const Color.fromRGBO(150, 161, 174, 1),
                width: 1.w,
              ),
              borderRadius: BorderRadius.circular(4.r)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: const Color.fromRGBO(150, 161, 174, 1),
                width: 1.5.w,
              ),
              borderRadius: BorderRadius.circular(4.r)),
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: const Color.fromRGBO(207, 212, 218, 1),
                width: 1.w,
              ),
              borderRadius: BorderRadius.circular(4.r)),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
                width: 1.5.w,
              ),
              borderRadius: BorderRadius.circular(4.r)),
        ),
      );
}
