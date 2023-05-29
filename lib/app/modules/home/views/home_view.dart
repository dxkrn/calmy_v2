import 'package:calmy/app/modules/home/views/activity_card.dart';
import 'package:calmy/app/modules/home/views/featured_list.dart';
import 'package:calmy/app/modules/home/views/single_feature_card.dart';
import 'package:calmy/theme.dart';
import 'package:calmy/widgets/bottom_navbar.dart';
import 'package:calmy/widgets/custom_listview.dart';
import 'package:calmy/widgets/custom_scaffold_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  // NOTE: Find controller
  final homeC = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    //NOTE: Chart List of featured for carousel

    //NOTE: home
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {},
              child: SizedBox(
                width: 40.w,
                height: 40.w,
                child: const Image(
                    image: AssetImage('assets/icons/icon_more.png')),
              ),
            ),
            Container(
              width: 40.w,
              height: 40.w,
              padding: EdgeInsets.all(4.w),
              decoration: BoxDecoration(
                color: blueShade1,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/img_profile.jpg'),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      body: CustomScaffoldBody(
        child: SafeArea(
          child: Stack(
            children: [
              CustomListView(childern: [
                SizedBox(
                  height: 30.w,
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Selamat pagi, Tiwai',
                        style: heading1Bold,
                      ),
                      SizedBox(
                        height: verticalSpaceReguler,
                      ),
                      Text(
                        '”Janganlah pernah menyerah ketika kamu masih mampu berusaha lagi.” - Brian Dyson',
                        style: heading3Reguler.copyWith(color: blackShade5),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: verticalSpaceBig,
                ),

                //NOTE: Slider V2
                SizedBox(
                  // color: cyanColor,
                  width: double.infinity,
                  height: 210.w,
                  child: PageView(
                    physics: const BouncingScrollPhysics(),
                    children: featuredList,
                    onPageChanged: (index) {
                      homeC.currentIndex.value = index;
                      // setState(() {
                      //   _current = index;
                      // });
                    },
                  ),
                ),

                SizedBox(
                  height: verticalSpaceSmall,
                ),

                //NOTE: Carousel Indicator
                Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: featuredList.asMap().entries.map((entry) {
                      return GestureDetector(
                        // onTap: () {
                        //   _controller.animateToPage(entry.key);
                        // },
                        child: Container(
                          width: 12.0,
                          height: 12.0,
                          margin: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: homeC.currentIndex.value == entry.key
                                ? blueShade1
                                : blueShade4,
                            // _current == entry.key ? blueShade1 : blueShade4,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleFeatureCard(
                        title: 'Voice Chat Bot',
                        imgSource: 'assets/images/img_card_voice_chatbot.png',
                        onTap: () {},
                      ),
                      SizedBox(
                        height: 30.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Activities',
                            style: heading2Bold,
                          ),
                          SizedBox(
                            height: verticalSpaceReguler,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 420.w,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ActivityCard(
                                      title: 'Lessons',
                                      desc:
                                          'Cari tahu semua tentang Anxiety Disorder',
                                      imgSrc:
                                          'assets/icons/icon_feature_lessons.png',
                                      onTap: () {},
                                    ),
                                    ActivityCard(
                                      title: 'Exerises',
                                      desc:
                                          'Lakukan rekomendasi kegiatan positif bersama Calmy',
                                      imgSrc:
                                          'assets/icons/icon_feature_exercises.png',
                                      onTap: () {},
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: verticalSpaceMedium,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ActivityCard(
                                      title: 'Challenges',
                                      desc:
                                          'Jadikan dirimu lebih baik dengan tantangan',
                                      imgSrc:
                                          'assets/icons/icon_feature_challenges.png',
                                      onTap: () {},
                                    ),
                                    ActivityCard(
                                      title: 'Self-care',
                                      desc: 'Mari mulai cintai dirimu sendiri',
                                      imgSrc:
                                          'assets/icons/icon_feature_selfcare.png',
                                      onTap: () {},
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SingleFeatureCard(
                        title: 'Consultation',
                        imgSource: 'assets/images/img_card_consultation.png',
                        onTap: () {
                          Get.toNamed('/consultationPage');
                        },
                      ),
                      SingleFeatureCard(
                        title: 'Community',
                        imgSource: 'assets/images/img_card_community.png',
                        onTap: () {},
                      ),
                      SizedBox(
                        height: 100.w,
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 100.w,
                ),
              ]),

              //NOTE: Navbar
              const BottomNavbar(),

              //NOTE: SOS Button
              Positioned(
                bottom: 100.w,
                right: 20.w,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffEB5757),
                    borderRadius: BorderRadius.circular(30.r),
                    boxShadow: [
                      BoxShadow(
                        color: blueShade1.withOpacity(0.6),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(30.r),
                      splashColor: blueShade1,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        Get.toNamed('/sosPage1');
                      },
                      child: SizedBox(
                        width: 50.w,
                        height: 50.w,
                        child: Center(
                          child: SizedBox(
                            width: 36.w,
                            height: 36.w,
                            child: const Image(
                              image: AssetImage('assets/icons/icon_sos.png'),
                            ),
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
      ),
    );
  }
}

class SingleWeeklyActivityReport extends StatelessWidget {
  const SingleWeeklyActivityReport({
    Key? key,
    required this.title,
    required this.count,
  }) : super(key: key);
  final String title;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: heading4Reguler,
            ),
            Row(
              children: [
                Text(
                  count.toString(),
                  style: heading4Bold,
                ),
                Text(
                  ' kali',
                  style: heading4Reguler,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
