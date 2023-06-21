import 'package:chat_app_clean_architecture/features/global/constant/page_const.dart';
import 'package:chat_app_clean_architecture/features/global/theme/style.dart';
import 'package:chat_app_clean_architecture/features/global/widgets/custom_button.dart';
import 'package:chat_app_clean_architecture/features/global/widgets/text_field_container.dart';
import 'package:chat_app_clean_architecture/features/user/presentation/cubit/credential/credential_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../global/widgets/google_button.dart';
import '../../../../global/widgets/title_text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<CredentialCubit, CredentialState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return _bodyWidget(context);
        },
      ),
    );
  }

  Widget _bodyWidget(BuildContext context) {
    return Center(
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
                  title: 'Login',
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Divider(),
                SizedBox(
                  height: 10.h,
                ),
                const TextFieldContainer(
                  hintText: "E-mail",
                  keyboardType: TextInputType.emailAddress,
                  prefixIcon: Icons.email,
                ),
                SizedBox(
                  height: 10.h,
                ),
                const TextFieldContainer(
                  hintText: "Password",
                  isObscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  prefixIcon: Icons.lock,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, PageConst.forgotPage);
                    },
                    child: Text(
                      'Forget Password ?',
                      style: TextStyle(
                        color: greenColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomButton(
                  buttonText: 'Log In',
                  onTap: () {},
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Text(
                      "Don't have an account?",
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
                        "Register",
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
                  height: 15.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: GoogleButton(
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
