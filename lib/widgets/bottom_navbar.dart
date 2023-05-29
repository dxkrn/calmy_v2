import 'package:calmy/app/controllers/bottom_navbar_controller.dart';
import 'package:calmy/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  //NOTE: Navbar Controller
  final BottomNavbarController _controller = Get.put(BottomNavbarController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              width: deviceWidth - 40.w,
              height: 50.w,
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              decoration: BoxDecoration(
                color: blackShade3,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.r),
                  topRight: Radius.circular(50.r),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //NOTE: Navbar Home
                  GestureDetector(
                    onTap: () {
                      _controller.activePage.value = 0;
                      Get.offAndToNamed('/');
                    },
                    child: SizedBox(
                      width: 24.w,
                      height: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 5.w,
                          ),
                          SizedBox(
                            width: 24.w,
                            height: 24.w,
                            child: Image(
                              image: _controller.activePage.value == 0
                                  ? const AssetImage(
                                      'assets/icons/icon_navbar_home_active.png')
                                  : const AssetImage(
                                      'assets/icons/icon_navbar_home_inactive.png'),
                            ),
                          ),
                          Container(
                            width: 20.w,
                            height: 5.w,
                            decoration: BoxDecoration(
                              color: _controller.activePage.value == 0
                                  ? whiteColor
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  //NOTE: Navbar Lessons
                  GestureDetector(
                    onTap: () {
                      _controller.activePage.value = 1;
                      Get.offAndToNamed('/lessonPage');
                    },
                    child: SizedBox(
                      width: 24.w,
                      height: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 5.w,
                          ),
                          SizedBox(
                            width: 24.w,
                            height: 24.w,
                            child: Image(
                              image: _controller.activePage.value == 1
                                  ? const AssetImage(
                                      'assets/icons/icon_navbar_lessons_active.png')
                                  : const AssetImage(
                                      'assets/icons/icon_navbar_lessons_inactive.png'),
                            ),
                          ),
                          Container(
                            width: 20.w,
                            height: 5.w,
                            decoration: BoxDecoration(
                              color: _controller.activePage.value == 1
                                  ? whiteColor
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  //NOTE: Navbar Chatbot
                  GestureDetector(
                    onTap: () {
                      _controller.activePage.value = 2;
                    },
                    child: SizedBox(
                      width: 24.w,
                      height: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 5.w,
                          ),
                          SizedBox(
                            width: 24.w,
                            height: 24.w,
                            child: const Image(
                              image: AssetImage(
                                  'assets/icons/icon_navbar_chatbot_empty.png'),
                            ),
                          ),
                          Container(
                            width: 20.w,
                            height: 5.w,
                            decoration: BoxDecoration(
                              color: _controller.activePage.value == 2
                                  ? whiteColor
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  //NOTE: Navbar Activities
                  GestureDetector(
                    onTap: () {
                      _controller.activePage.value = 3;
                      Get.offAndToNamed('/activitiesPage');
                    },
                    child: SizedBox(
                      width: 24.w,
                      height: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 5.w,
                          ),
                          SizedBox(
                            width: 24.w,
                            height: 24.w,
                            child: Image(
                              image: _controller.activePage.value == 3
                                  ? const AssetImage(
                                      'assets/icons/icon_navbar_activities_active.png')
                                  : const AssetImage(
                                      'assets/icons/icon_navbar_activities_inactive.png'),
                            ),
                          ),
                          Container(
                            width: 20.w,
                            height: 5.w,
                            decoration: BoxDecoration(
                              color: _controller.activePage.value == 3
                                  ? whiteColor
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  //NOTE: Navbar  Daily Journal
                  GestureDetector(
                    onTap: () {
                      _controller.activePage.value = 4;
                      Get.offAndToNamed('/dailyJournalPage');
                    },
                    child: SizedBox(
                      width: 24.w,
                      height: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 5.w,
                          ),
                          SizedBox(
                            width: 24.w,
                            height: 24.w,
                            child: Image(
                              image: _controller.activePage.value == 4
                                  ? const AssetImage(
                                      'assets/icons/icon_navbar_dailyjournal_active.png')
                                  : const AssetImage(
                                      'assets/icons/icon_navbar_dailyjournal_inactive.png'),
                            ),
                          ),
                          Container(
                            width: 20.w,
                            height: 5.w,
                            decoration: BoxDecoration(
                              color: _controller.activePage.value == 4
                                  ? whiteColor
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 10.w,
            left: (deviceWidth / 2) - 30.w,
            child: GestureDetector(
              onTap: () {
                _controller.activePage.value = 2;
                Get.offAndToNamed('/chatbotPage');
              },
              child: SizedBox(
                width: 60.w,
                height: 60.w,
                child: Image(
                  image: _controller.activePage.value == 2
                      ? const AssetImage(
                          'assets/icons/icon_navbar_chatbot_active.png')
                      : const AssetImage(
                          'assets/icons/icon_navbar_chatbot_inactive.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
