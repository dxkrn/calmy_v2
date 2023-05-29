import 'package:calmy/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SingleFeatureCard extends StatelessWidget {
  const SingleFeatureCard({
    Key? key,
    required this.title,
    required this.imgSource,
    required this.onTap,
  }) : super(key: key);

  final String title, imgSource;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: heading2Bold,
            ),
            SizedBox(
              height: verticalSpaceReguler,
            ),
            Container(
              width: double.infinity,
              height: 150.w,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(30.r),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(imgSource),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
