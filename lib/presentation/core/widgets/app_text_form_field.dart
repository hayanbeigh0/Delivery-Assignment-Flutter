import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    this.controller,
    required this.label,
    required this.hintText,
    this.onChanged,
    this.validator,
    this.initialValue,
    this.enabled,
    this.onFieldSubmitted,
    this.suffix,
    this.obscureText = false,
    this.onTap,
  });
  final TextEditingController? controller;
  final String label;
  final String hintText;
  final String? initialValue;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final void Function(String)? onFieldSubmitted;
  final bool? enabled;
  final bool obscureText;
  final Widget? suffix;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label),
          SizedBox(
            height: 5.h,
          ),
          SizedBox(
            child: TextFormField(
              controller: controller,
              decoration:
                  _buildInputDecoration(labelText: hintText, suffix: suffix),
              validator: validator,
              onChanged: onChanged,
              initialValue: initialValue,
              enabled: enabled,
              onFieldSubmitted: onFieldSubmitted,
              obscureText: obscureText,
              onTap: onTap,
              textInputAction: TextInputAction.next,
            ),
          ),
        ],
      ),
    );
  }

  InputDecoration _buildInputDecoration({
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
}
