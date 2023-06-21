import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/style.dart';

class TitleText extends StatelessWidget {
  final String title;
  const TitleText({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: greenColor,
        fontSize: 35.sp,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
