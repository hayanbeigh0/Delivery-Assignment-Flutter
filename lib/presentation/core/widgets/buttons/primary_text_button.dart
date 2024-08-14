import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    this.onPressed,
    required this.child,
  });
  final void Function()? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.sp)),
        padding: EdgeInsets.symmetric(
          vertical: 8.sp,
          horizontal: 14.sp,
        ),
        foregroundColor: Theme.of(context).primaryColor,
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
