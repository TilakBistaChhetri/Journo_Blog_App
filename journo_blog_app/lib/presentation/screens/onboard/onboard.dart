import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:journo_blog_app/presentation/screens/onboard/widgets/onboard_second.dart';
import 'package:journo_blog_app/presentation/screens/onboard/widgets/onboard_third.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../core/constants/my_assets.dart';
import '../../../core/constants/my_colors.dart';
import 'onboard_view_model.dart';
import 'widgets/onboard_first.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  ObBoardViewModel onBoardViewModel = ObBoardViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  MyAssets.mainLogo,
                  color: MyColors.primaryColor,
                  height: 42.h,
                  width: 139.w,
                ),
                63.h.heightBox,
                PageView(
                  controller: ObBoardViewModel.pageController,
                  children: [OnBoardFirst(), OnBoardSecond(), OnboardThird()],
                ).expand(),

                61.h.heightBox,
                ElevatedButton(
                  onPressed: () {
                    context.go("/auth");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: MyColors.primaryColor,
                    minimumSize: Size(MediaQuery.of(context).size.width, 44.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11.r),
                    ),
                  ),
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),

                SizedBox(
                  height: 61.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Skip",
                        style: TextStyle(
                          color: MyColors.primaryColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SmoothPageIndicator(
                        controller: ObBoardViewModel.pageController,
                        count: 3,
                        effect: WormEffect(
                          activeDotColor: MyColors.primaryColor,
                          dotHeight: 14.0,
                          dotWidth: 14.0,
                        ), 
                        onDotClicked: (index) {},
                      ),

                      Text(
                        "Next",
                        style: TextStyle(
                          color: MyColors.primaryColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
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
