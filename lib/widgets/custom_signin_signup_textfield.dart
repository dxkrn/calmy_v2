import 'package:calmy/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSigninSignupTextField extends StatefulWidget {
  const CustomSigninSignupTextField({
    Key? key,
    required this.title,
    required this.hintText,
    required this.controller,
    this.isPassword = true,
    this.withIcon = false,
  }) : super(key: key);

  final String title, hintText;
  final bool isPassword, withIcon;
  final TextEditingController controller;

  @override
  State<CustomSigninSignupTextField> createState() =>
      _CustomSigninSignupTextFieldState();
}

class _CustomSigninSignupTextFieldState
    extends State<CustomSigninSignupTextField> {
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: heading3Medium,
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(
            top: verticalSpaceSmall,
            bottom: verticalSpaceBig,
          ),
          padding: EdgeInsets.all(10.w),
          height: 50.w,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width:
                    widget.isPassword ? deviceWidth - 94.w : deviceWidth - 60.w,
                child: TextField(
                  cursorColor: blueShade1,
                  style: heading4Reguler.copyWith(
                    color: blackShade1,
                  ),
                  obscureText: widget.isPassword & isHidden ? true : false,
                  // maxLines: 1,
                  decoration: InputDecoration(
                    isDense: true,
                    border: InputBorder.none,
                    hintStyle: heading4Reguler.copyWith(
                      color: blackShade1.withOpacity(0.7),
                    ),
                    hintText: widget.hintText,
                  ),
                ),
              ),
              widget.isPassword
                  ? GestureDetector(
                      onTap: () {
                        setState(() {
                          isHidden = !isHidden;
                        });
                      },
                      child: SizedBox(
                        width: 24.w,
                        height: 24.w,
                        child: Image(
                          image: AssetImage(
                            isHidden
                                ? 'assets/icons/icon_password_hidden.png'
                                : 'assets/icons/icon_password_show.png',
                          ),
                        ),
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ],
    );
  }
}
