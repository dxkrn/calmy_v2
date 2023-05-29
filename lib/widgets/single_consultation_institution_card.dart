import 'package:calmy/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SingleConsultationInstitutionCard extends StatelessWidget {
  const SingleConsultationInstitutionCard({
    Key? key,
    required this.name,
    required this.address,
    required this.imgSrc,
  }) : super(key: key);

  final String name, address, imgSrc;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.w),
      decoration: BoxDecoration(
        color: whiteColor.withOpacity(0.6),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(15.r),
          splashColor: pinkColor,
          highlightColor: Colors.transparent,
          onTap: () {
            Get.toNamed('/consultationPersonPage');
          },
          child: Container(
            width: deviceWidth - 40.w,
            height: 100.w,
            padding: EdgeInsets.only(
                left: 20.w, top: 20.w, bottom: 20.w, right: 5.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50.w,
                  height: 50.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    image: DecorationImage(
                      image: AssetImage(imgSrc),
                    ),
                  ),
                ),
                SizedBox(
                  width: 190.w,
                  height: 50.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: heading3Bold,
                      ),
                      SizedBox(
                        height: verticalSpaceSmall,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 16.w,
                            height: 16.w,
                            child: const Image(
                              image:
                                  AssetImage('assets/icons/icon_location.png'),
                            ),
                          ),
                          SizedBox(
                            width: 174.w,
                            child: Text(
                              address,
                              style:
                                  heading4Reguler.copyWith(color: blackShade5),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 40.w,
                  height: 40.w,
                  child: const Image(
                    image: AssetImage('assets/icons/icon_arrow_right.png'),
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
