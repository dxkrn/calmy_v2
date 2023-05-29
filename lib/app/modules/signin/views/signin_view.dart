import 'package:calmy/app/controllers/auth_controller.dart';
import 'package:calmy/app/routes/app_pages.dart';
import 'package:calmy/theme.dart';
import 'package:calmy/widgets/custom_button.dart';
import 'package:calmy/widgets/custom_scaffold_body.dart';
import 'package:calmy/widgets/custom_signin_signup_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/signin_controller.dart';

class SigninView extends GetView<SigninController> {
  SigninView({Key? key}) : super(key: key);

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
                    'Sign In',
                    style: heading1Bold,
                  ),
                  SizedBox(
                    height: verticalSpaceReguler,
                  ),
                  Text(
                    'Masuk dengan email yang telah terdaftar.',
                    style: heading3Reguler,
                  ),
                  SizedBox(
                    height: verticalSpaceBig,
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
                  CustomButton(
                    title: 'Sign In',
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
                        'Belum punya akun? ',
                        style: heading4Reguler.copyWith(
                          color: blackShade3,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.SIGNUP);
                        },
                        child: Text(
                          'Signup',
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'atau masuk dengan',
                        style: heading4Reguler.copyWith(
                          color: blackShade3,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: verticalSpaceReguler,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 30.w,
                        height: 30.w,
                        child: const Image(
                          image: AssetImage('assets/icons/icon_facebook.png'),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      SizedBox(
                        width: 30.w,
                        height: 30.w,
                        child: const Image(
                          image: AssetImage('assets/icons/icon_google.png'),
                        ),
                      ),
                    ],
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
