import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/style.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;
  const CustomButton(
      {super.key, required this.buttonText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44.h,
      width: double.maxFinite,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: greenColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              10.h,
            ),
          ),
        ),
        onPressed: onTap,
        child: Text(
          buttonText,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }
}
