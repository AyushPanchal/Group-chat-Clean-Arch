import 'package:chat_app_clean_architecture/features/global/constant/page_const.dart';
import 'package:chat_app_clean_architecture/features/global/theme/style.dart';
import 'package:chat_app_clean_architecture/features/global/widgets/custom_button.dart';
import 'package:chat_app_clean_architecture/features/global/widgets/text_field_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../global/widgets/google_button.dart';
import '../../../../global/widgets/title_text.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TitleText(
                    title: 'Register',
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const Divider(),
                  SizedBox(
                    height: 10.h,
                  ),
                  const TextFieldContainer(
                    hintText: "Username",
                    keyboardType: TextInputType.emailAddress,
                    prefixIcon: FontAwesomeIcons.user,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const TextFieldContainer(
                    hintText: "E-mail",
                    keyboardType: TextInputType.emailAddress,
                    prefixIcon: Icons.email_outlined,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const TextFieldContainer(
                    isObscureText: true,
                    hintText: "Password",
                    keyboardType: TextInputType.visiblePassword,
                    prefixIcon: Icons.lock,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const TextFieldContainer(
                    isObscureText: true,
                    hintText: "Confirm Password",
                    keyboardType: TextInputType.visiblePassword,
                    prefixIcon: Icons.lock,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomButton(
                    buttonText: 'Sign up',
                    onTap: () {},
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            PageConst.registrationPage,
                          );
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: greenColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'By clicking register, you agree to the ',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: colorC1C1C1),
                      ),
                      Text(
                        'Privacy Policy',
                        style: TextStyle(
                            color: greenColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'and ',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: colorC1C1C1),
                      ),
                      Text(
                        'terms ',
                        style: TextStyle(
                            color: greenColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'of use',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: colorC1C1C1),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
