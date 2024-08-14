import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

InputDecoration buildInputDecoration({
  required String labelText,
  required Widget? suffix,
}) {
  return InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0.sp),
    ),
    // labelText: labelText,
    hintText: labelText,
    hintStyle: GoogleFonts.lexend(
      color: Colors.grey,
      fontSize: 12.sp,
    ),
    suffix: suffix,
  );
}
