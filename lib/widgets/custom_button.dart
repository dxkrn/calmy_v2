import 'package:calmy/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.title,
    required this.width,
    required this.onTap,
    this.isOutlined = false,
  }) : super(key: key);

  final String title;
  final void Function() onTap;
  final double width;
  final bool isOutlined;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isOutlined ? Colors.transparent : blueShade1,
        borderRadius: BorderRadius.circular(30.r),
        border: isOutlined
            ? Border.all(width: 2.w, color: blueShade1)
            : Border.all(width: 0, color: Colors.transparent),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(30.r),
          splashColor: pinkColor,
          highlightColor: Colors.transparent,
          onTap: onTap,
          child: SizedBox(
            width: width,
            height: 50.w,
            child: Center(
              child: Text(
                title,
                style: heading2Medium.copyWith(
                  color: isOutlined ? blackShade1 : whiteColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
