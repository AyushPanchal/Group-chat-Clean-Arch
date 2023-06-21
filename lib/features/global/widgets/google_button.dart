import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GoogleButton extends StatelessWidget {
  final VoidCallback onTap;
  const GoogleButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(50.h),
      ),
      child: IconButton(
        onPressed: onTap,
        icon: const FaIcon(
          FontAwesomeIcons.google,
          color: Colors.white,
        ),
      ),
    );
  }
}
