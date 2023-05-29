import 'package:calmy/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceWidth - 40.w,
      height: 50.w,
      padding: EdgeInsets.all(10.r),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Row(
        children: [
          SizedBox(
            width: deviceWidth - 90.w,
            child: TextField(
              cursorColor: whiteColor,
              style: heading4Reguler.copyWith(
                color: blueShade1,
              ),
              // maxLines: 1,
              decoration: InputDecoration(
                  isDense: true,
                  border: InputBorder.none,
                  hintStyle: heading4Reguler.copyWith(
                    color: blueShade1.withOpacity(0.7),
                  ),
                  hintText: 'Ketikkan sesuatu..'),
            ),
          ),
          SizedBox(
            width: 30.w,
            height: 30.w,
            child: const Image(
              image: AssetImage('assets/icons/icon_search.png'),
            ),
          ),
        ],
      ),
    );
  }
}
