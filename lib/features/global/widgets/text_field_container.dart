import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/style.dart';

class TextFieldContainer extends StatelessWidget {
  final bool? isObscureText;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String? hintText;
  final IconData? prefixIcon;
  const TextFieldContainer(
      {Key? key,
      this.hintText,
      this.prefixIcon,
      this.isObscureText,
      this.keyboardType,
      this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: color747480.withOpacity(.2),
          borderRadius: BorderRadius.circular(10)),
      child: TextField(
        obscureText: isObscureText == true ? true : false,
        keyboardType: keyboardType ?? TextInputType.text,
        controller: controller,
        decoration: InputDecoration(
            prefixIcon: Icon(prefixIcon ?? Icons.circle),
            hintText: hintText,
            border: InputBorder.none),
      ),
    );
  }
}
