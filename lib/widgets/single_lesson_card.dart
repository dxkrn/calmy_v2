import 'package:calmy/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SingleLessonCard extends StatelessWidget {
  const SingleLessonCard({
    Key? key,
    required this.title,
    required this.content,
    required this.imgSrc,
  }) : super(key: key);

  final String title, content, imgSrc;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed('/lessonContentPage');
      },
      child: Container(
        width: deviceWidth - 60.w,
        margin: EdgeInsets.only(bottom: 20.w),
        padding: EdgeInsets.all(20.w),
        decoration: BoxDecoration(
          color: whiteColor.withOpacity(0.6),
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: heading3Reguler,
            ),
            SizedBox(
              height: verticalSpaceBig,
            ),
            Container(
              width: 50.w,
              height: 50.w,
              decoration: BoxDecoration(
                color: blueShade1,
                borderRadius: BorderRadius.circular(30.r),
                image: DecorationImage(
                  image: AssetImage(imgSrc),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
