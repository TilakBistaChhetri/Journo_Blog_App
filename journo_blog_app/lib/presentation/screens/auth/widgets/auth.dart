import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/my_assets.dart';
import '../../../commmon_widgets/outline_button.dart';
import '../../../commmon_widgets/primary_button.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(MyAssets.AssetsImagesAuthBg)),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    MyAssets.mainLogo,
                    height: 42.h,
                    width: 139.w,
                  ),
                ),

                const Spacer(),
                Text(
                  "Explore the world, \nBillions of Thoughts.",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                20.h.heightBox,
                PrimaryButton(title: "Login", onPressed: () {
                   context.go("/login");
                }),

                12.h.heightBox,

                OutlineButton(title: "Register", onPressed: () {
                   context.go("/register");
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
