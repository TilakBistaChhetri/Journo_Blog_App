import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/my_assets.dart';

class OnboardThird extends StatelessWidget {
  const OnboardThird({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(MyAssets.assetsImagesOnboard3, height: 333.h, width: 333.w),
        Text(
          "Explore a wide selection of categories, or use the search bar to find specific topics",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
