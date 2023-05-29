import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//NOTE : Colors
Color blueShade1 = const Color(0xff4349FF);
Color blueShade2 = const Color(0xff6267FF);
Color blueShade3 = const Color(0xff999DFF);
Color blueShade4 = const Color(0xffC0C2FF);
Color blueShade5 = const Color(0xffE9E9FF);

Color blackShade1 = const Color(0xff24252F);
Color blackShade2 = const Color(0xff343646);
Color blackShade3 = const Color(0xff414459);
Color blackShade4 = const Color(0xff565A79);
Color blackShade5 = const Color(0xff767CA7);

Color whiteColor = const Color(0xffFFFFFF);
Color pinkColor = const Color(0xffFDAAF9);

//NOTE : Text Style
//Bold
TextStyle heading1Bold = GoogleFonts.montserrat(
  fontWeight: FontWeight.w700,
  color: blackShade1,
  fontSize: 24.sp,
);
TextStyle heading2Bold = GoogleFonts.montserrat(
  fontWeight: FontWeight.w700,
  color: blackShade1,
  fontSize: 20.sp,
);
TextStyle heading3Bold = GoogleFonts.montserrat(
  fontWeight: FontWeight.w700,
  color: blackShade1,
  fontSize: 16.sp,
);
TextStyle heading4Bold = GoogleFonts.montserrat(
  fontWeight: FontWeight.w700,
  color: blackShade1,
  fontSize: 14.sp,
);
TextStyle heading5Bold = GoogleFonts.montserrat(
  fontWeight: FontWeight.w700,
  color: blackShade1,
  fontSize: 12.sp,
);

//Medium
TextStyle heading1Medium = GoogleFonts.montserrat(
  fontWeight: FontWeight.w500,
  color: blackShade1,
  fontSize: 24.sp,
);
TextStyle heading2Medium = GoogleFonts.montserrat(
  fontWeight: FontWeight.w500,
  color: blackShade1,
  fontSize: 20.sp,
);
TextStyle heading3Medium = GoogleFonts.montserrat(
  fontWeight: FontWeight.w500,
  color: blackShade1,
  fontSize: 16.sp,
);
TextStyle heading4Medium = GoogleFonts.montserrat(
  fontWeight: FontWeight.w500,
  color: blackShade1,
  fontSize: 14.sp,
);
TextStyle heading5Medium = GoogleFonts.montserrat(
  fontWeight: FontWeight.w500,
  color: blackShade1,
  fontSize: 12.sp,
);

//Reguler
TextStyle heading1Reguler = GoogleFonts.montserrat(
  fontWeight: FontWeight.w400,
  color: blackShade1,
  fontSize: 24.sp,
);
TextStyle heading2Reguler = GoogleFonts.montserrat(
  fontWeight: FontWeight.w400,
  color: blackShade1,
  fontSize: 20.sp,
);
TextStyle heading3Reguler = GoogleFonts.montserrat(
  fontWeight: FontWeight.w400,
  color: blackShade1,
  fontSize: 16.sp,
);
TextStyle heading4Reguler = GoogleFonts.montserrat(
  fontWeight: FontWeight.w400,
  color: blackShade1,
  fontSize: 14.sp,
);
TextStyle heading5Reguler = GoogleFonts.montserrat(
  fontWeight: FontWeight.w400,
  color: blackShade1,
  fontSize: 12.sp,
);

//NOTE : Device Sizes
double deviceWidth = Get.width;
double deviceHeight = Get.height;

//NOTE : Spaces
double verticalSpaceSmall = 5.w;
double verticalSpaceReguler = 10.w;
double verticalSpaceMedium = 20.w;
double verticalSpaceBig = 30.w;
double horizontalSpaceSmall = 5.w;
double horizontalSpaceReguler = 10.w;
double horizontalSpaceMedium = 20.w;
double horizontalSpaceBig = 30.w;
