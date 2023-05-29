import 'package:calmy/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SingleActivityCard extends StatelessWidget {
  const SingleActivityCard({
    Key? key,
    required this.title,
    required this.desc,
    required this.imgSrc,
    required this.onTap,
  }) : super(key: key);
  final String title, desc, imgSrc;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120.w,
      margin: EdgeInsets.only(bottom: verticalSpaceMedium),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(15.r),
          splashColor: pinkColor,
          highlightColor: Colors.transparent,
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.all(10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 100.w,
                  height: 100.w,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(15.r),
                    image: DecorationImage(
                      image: AssetImage(imgSrc),
                    ),
                  ),
                ),
                SizedBox(
                  width: deviceWidth - 180.w,
                  height: 100.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: heading2Bold.copyWith(
                          color: whiteColor,
                        ),
                      ),
                      Text(
                        desc,
                        style: heading3Reguler.copyWith(
                          color: whiteColor,
                        ),
                      ),
                    ],
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
