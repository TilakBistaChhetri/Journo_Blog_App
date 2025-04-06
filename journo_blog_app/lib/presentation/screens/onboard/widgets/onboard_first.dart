import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:journo_blog_app/core/constants/my_assets.dart';

class OnBoardFirst extends StatelessWidget {
  const OnBoardFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(MyAssets.assetsImagesOnboard1, height: 333.h, width: 333.w),
        Text(
          "Discover, engage and read the latest articles oras well as share your own thoughts and ideas with the community",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
