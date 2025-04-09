import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../core/constants/my_assets.dart';
import '../../../../core/constants/my_colors.dart';

class HomeDetails extends StatelessWidget {
  const HomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            context.go("/general");
          },
        ),
        backgroundColor: MyColors.primaryColor,
        title:
            "Netflix will Charge Money for Password Sharing".text.ellipsis
                .make(),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                10.h.heightBox,
                Image.asset(MyAssets.assetsImagesNetflix),
                "Netflix will Charge Money for Password Sharing".text.bold.xl2
                    .make(),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(FeatherIcons.eye),
                    8.w.widthBox,
                    "147 Views".text.make(),
                    const Spacer(),

                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FeatherIcons.thumbsUp,
                        color: MyColors.secondaryColor,
                      ),
                    ),
                    "0".text.make(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FeatherIcons.thumbsDown,
                        color: MyColors.red,
                      ),
                    ),
                    "0".text.make(),
                  ],
                ),

                "We have all head about how Netflix wants to start chargi extra money if your share password with people other tha your housemates, with OTTP platform this features in a regions.This isnow expected to roll out'more by this March. Netflix's Padig password sharing coming to more people in a recent earning report, Netflix revealed that its pad-sharing initiative will reach more people by the end of Q12023,which will provide you withan option to pay more if you want to continue sharing your passwords. So, you could eitherdiscontiue the practice or ask the people you share your Netflix password with to pay more. Netflix anticipates that this change might attract some 'cancel reaction' in may markets but will serve in a very different quarterly paid net addspattern in 2023,with paid net  adds pattern in 2023 with paid netlikey to be grater. However, it hasn't revealed any pricing or other details about the feature. To recall, the paid password sharing was rolled out as a test in Chile,Costa Rica, and Peru last year. A new add-on option was provided to people thre requiring other to verify the login. "
                    .text
                    .make(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
