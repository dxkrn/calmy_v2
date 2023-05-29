import 'package:calmy/app/data/chart_data.dart';
import 'package:calmy/app/modules/home/controllers/home_controller.dart';
import 'package:calmy/app/modules/home/views/home_view.dart';
import 'package:calmy/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

// NOTE: Find controller
final homeC = Get.find<HomeController>();

final List<Widget> featuredList = [
  Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.w),
    child: SizedBox(
      width: deviceWidth,
      height: 210.w,
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                width: 300.w,
                height: 200.w,
                decoration: BoxDecoration(
                  color: blueShade3,
                  borderRadius: BorderRadius.circular(30.r),
                ),
              ),
            ],
          ),
          Container(
            width: 350.w,
            height: 190.w,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(30.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                      // color: blueShade4,
                      width: deviceWidth - 210.w,
                      height: 140.w,
                      child: SfCircularChart(
                        tooltipBehavior: homeC.tooltip,
                        title: ChartTitle(
                            text: 'Weekly Moods', textStyle: heading5Bold),
                        margin: const EdgeInsets.all(0),
                        // ignore: prefer_const_literals_to_create_immutables
                        palette: [
                          const Color(0xffE86B53),
                          const Color(0xffFEB2B6),
                          const Color(0xffFFCF7C),
                          const Color(0xff61B8B2),
                          const Color(0xff6267FF),
                        ],
                        series: <CircularSeries<ChartData, String>>[
                          DoughnutSeries<ChartData, String>(
                              dataSource: homeC.data,
                              xValueMapper: (ChartData data, _) => data.x,
                              yValueMapper: (ChartData data, _) => data.y,
                              name: 'Weekly Mood'),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: deviceWidth - 200.w,
                      height: 40.w,
                      child: const Image(
                        image:
                            AssetImage('assets/images/img_mood_chart_info.png'),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 2.w,
                  height: 200.w,
                  color: blueShade4,
                ),
                SizedBox(
                  width: deviceWidth - 210.w,
                  height: 180.w,
                  // color: blueShade4,
                  child: Column(
                    children: [
                      SizedBox(
                        height: verticalSpaceReguler,
                      ),
                      SizedBox(
                        child: Text(
                          'Weekly Activities',
                          style: heading4Bold,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        height: verticalSpaceReguler,
                      ),
                      const SingleWeeklyActivityReport(
                        title: 'Exercises',
                        count: 4,
                      ),
                      const SingleWeeklyActivityReport(
                        title: 'Challenges',
                        count: 5,
                      ),
                      const SingleWeeklyActivityReport(
                        title: 'Self-care',
                        count: 6,
                      ),
                      const SingleWeeklyActivityReport(
                        title: 'Diary',
                        count: 7,
                      ),
                      const SingleWeeklyActivityReport(
                        title: 'Lesson',
                        count: 2,
                      ),
                      const SingleWeeklyActivityReport(
                        title: 'Chat',
                        count: 21,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ),
  Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.w),
    child: SizedBox(
      // color: blackShade5,
      width: double.infinity,
      height: 210.w,
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                width: 300.w,
                height: 200.w,
                decoration: BoxDecoration(
                  color: blueShade3,
                  borderRadius: BorderRadius.circular(30.r),
                ),
              ),
            ],
          ),
          Container(
            width: 350.w,
            height: 190.w,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(30.r),
              image: const DecorationImage(
                image: AssetImage('assets/images/img_level_test.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 20.w,
                  right: 20.w,
                  child: Container(
                    decoration: BoxDecoration(
                      color: blueShade1,
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(30.r),
                        splashColor: pinkColor,
                        highlightColor: Colors.transparent,
                        onTap: () {},
                        child: SizedBox(
                          width: 50.w,
                          height: 50.w,
                          child: Center(
                            child: SizedBox(
                              width: 20.w,
                              height: 20.w,
                              child: const Image(
                                  image: AssetImage(
                                      'assets/icons/icon_arrow_right_white.png')),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ),
];
