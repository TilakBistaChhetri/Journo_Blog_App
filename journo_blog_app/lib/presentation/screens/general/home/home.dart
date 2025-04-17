import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../core/constants/my_assets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              Image.asset(MyAssets.assetsImagesNetflix).cornerRadius(20),
              20.h.heightBox,

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Latest Posts".text.size(16).make(),
                  "See All".text.size(16).make(),
                ],
              ),
              10.h.heightBox,
              ListView.separated(
                shrinkWrap: true,
                itemCount: 5,
                physics: NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) => SizedBox(height: 20.h),
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      
                      InkWell(
                        onTap: () => context.go("/homedetails"),
                        child: Image.asset(
                          MyAssets.assetsImagesNetflix,
                          height: 120,
                          width: 180,
                          fit: BoxFit.cover,
                        ).cornerRadius(20),
                      ),

                      10.w.widthBox,

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Netflix will charge Money for Password Sharing".text
                              .size(16)
                              .bold
                              .maxLines(2)
                              .make(),
                          6.h.heightBox,

                          Row(
                            children: [
                              Icon(FeatherIcons.clock),
                              "6 months ago".text.size(16).make(),
                            ],
                          ),
                          6.h.heightBox,

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              "59 views".text.size(16).make(),
                              Icon(FeatherIcons.bookmark),
                            ],
                          ),
                        ],
                      ).expand(),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}