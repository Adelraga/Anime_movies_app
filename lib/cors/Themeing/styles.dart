import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/cors/Themeing/colors.dart';

abstract class Styles {
  static TextStyle font24Black700Weight = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
  static TextStyle font22Black700Weight = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 0, 91, 228),
  );
  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: ColorsManager.primaryColor,
  );
  static TextStyle font40Weight700 = TextStyle(
    color: Color(0xFF247CFF),
    fontSize: 38,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font15Weight400 = TextStyle(
    color: Color(0xFF757575),
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );

  static const textStyle18 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  static const font24blue700weight = TextStyle(
    fontSize: 24,
    color: ColorsManager.primaryColor,
    fontWeight: FontWeight.w700,
  );
  static const font12Gray400weight = TextStyle(
    color: Color(0xFF9E9E9E),
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );
  static const font12black24bold = TextStyle(
    color: Color.fromARGB(255, 0, 68, 169),
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );
  static const font13black24bold = TextStyle(
    color: Color.fromARGB(255, 117, 117, 117),
    fontSize: 13,
    fontWeight: FontWeight.bold,
  );
  static const font15black24bold = TextStyle(
    color: Color.fromARGB(255, 117, 117, 117),
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );
  static const font18black24bold = TextStyle(
    color: Color.fromARGB(255, 117, 117, 117),
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
  static const font11blueDarkbold = TextStyle(
                  fontSize: 11,
                  color: Color.fromARGB(255, 0, 36, 65),
                  fontWeight: FontWeight.bold);
}
