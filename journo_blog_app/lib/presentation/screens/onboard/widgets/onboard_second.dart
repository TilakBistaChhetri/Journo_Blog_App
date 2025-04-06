import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/my_assets.dart';

class OnBoardSecond extends StatelessWidget {
  const OnBoardSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(MyAssets.assetsImagesOnboard2, height: 333.h, width: 333.w),
        Text(
          "Customize your reading experience and join the conversation by creating an account.",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
