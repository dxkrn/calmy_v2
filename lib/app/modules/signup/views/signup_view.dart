import 'package:calmy/app/controllers/auth_controller.dart';
import 'package:calmy/app/routes/app_pages.dart';
import 'package:calmy/theme.dart';
import 'package:calmy/widgets/custom_button.dart';
import 'package:calmy/widgets/custom_scaffold_body.dart';
import 'package:calmy/widgets/custom_signin_signup_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  SignupView({Key? key}) : super(key: key);
  //NOTE: find controller
  final authC = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: CustomScaffoldBody(
        child: SizedBox(
          width: deviceWidth,
          height: deviceHeight,
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  SizedBox(
                    height: 50.w,
                  ),
                  Text(
                    'Sign Up',
                    style: heading1Bold,
                  ),
                  SizedBox(
                    height: verticalSpaceReguler,
                  ),
                  Text(
                    'Daftar dengan Email dan Password.',
                    style: heading3Reguler,
                  ),
                  SizedBox(
                    height: verticalSpaceBig,
                  ),
                  CustomSigninSignupTextField(
                    title: 'Username',
                    hintText: 'Username Anda...',
                    controller: controller.usernameC,
                    isPassword: false,
                  ),
                  CustomSigninSignupTextField(
                    title: 'E-mail',
                    hintText: 'Email Anda...',
                    controller: controller.emailC,
                    isPassword: false,
                  ),
                  CustomSigninSignupTextField(
                    title: 'Password',
                    hintText: 'Password Anda...',
                    controller: controller.passC,
                  ),
                  CustomSigninSignupTextField(
                    title: 'Re-password',
                    hintText: 'Ulangi password Anda...',
                    controller: controller.rePassC,
                  ),
                  CustomButton(
                    title: 'Sign Up',
                    width: deviceWidth - 40.w,
                    onTap: () {
                      Get.toNamed('/homeTransition');
                    },
                  ),
                  SizedBox(
                    height: verticalSpaceBig,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sudah punya akun? ',
                        style: heading4Reguler.copyWith(
                          color: blackShade3,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.SIGNIN);
                        },
                        child: Text(
                          'Signin',
                          style: heading4Bold.copyWith(
                            color: blueShade1,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: verticalSpaceBig,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
