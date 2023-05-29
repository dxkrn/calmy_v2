import 'package:calmy/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({
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
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: (deviceWidth / 2) - 30.w,
        height: 200.w,
        padding: EdgeInsets.all(20.w),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 60.w,
              height: 60.w,
              decoration: BoxDecoration(
                color: blueShade1,
                borderRadius: BorderRadius.circular(50.r),
                image: DecorationImage(
                  image: AssetImage(imgSrc),
                ),
              ),
            ),
            SizedBox(
              height: verticalSpaceSmall,
            ),
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    title,
                    style: heading3Bold,
                  ),
                ),
                SizedBox(
                  height: verticalSpaceSmall,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    desc,
                    style: heading4Reguler,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
