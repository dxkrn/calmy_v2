import 'package:calmy/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

// ignore: non_constant_identifier_names
AppBar CustomAppbar(String title,
    {bool withLeftIcon = true,
    bool withRigtIcon = false,
    Widget rightIcon = const SizedBox()}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    automaticallyImplyLeading: false,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        withLeftIcon
            ? GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: SizedBox(
                  width: 40.w,
                  height: 40.w,
                  child: const Image(
                      image: AssetImage('assets/icons/icon_back.png')),
                ),
              )
            : SizedBox(
                width: 40.w,
                height: 40.w,
              ),
        Text(
          title,
          style: heading2Bold,
        ),
        withRigtIcon
            ? rightIcon
            : SizedBox(
                width: 40.w,
                height: 40.w,
              ),
      ],
    ),
  );
}
