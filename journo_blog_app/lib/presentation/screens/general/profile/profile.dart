import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:journo_blog_app/core/constants/my_assets.dart';
import 'package:journo_blog_app/core/constants/my_colors.dart' show MyColors;
import 'package:velocity_x/velocity_x.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        elevation: 0,
        automaticallyImplyLeading: false, //  for removing back button
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(FeatherIcons.logOut).pOnly(right: 10),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 500,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              color: MyColors.primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage(MyAssets.assetsImagesNetflix),
                  ),
                  10.h.heightBox,
                  "Tilak".text.bold.white.xl2.make(),
                  "tilak@tilak.com".text.white.xl.make(),
                  20.h.heightBox,
                  "Tilak Bista is a flutter developer who is more passionate about technology."
                      .text
                      .white
                      .center
                      .xl // for size
                      .make(),
                  20.h.heightBox,
          
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          "10".text.white.xl3.bold.make(),
                          "Posts".text.white.xl.bold.make(),
                        ],
                      ),
          
                      Column(
                        children: [
                          "0".text.white.xl3.bold.make(),
                          "Following".text.white.xl.bold.make(),
                        ],
                      ),
          
                      Column(
                        children: [
                          "0".text.white.xl3.bold.make(),
                          "Followers".text.white.xl.bold.make(),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          20.h.heightBox,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "My Posts ".text.xl3.bold.make(),
                  GridView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),

                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:2,
                      crossAxisSpacing: 14,
                      mainAxisSpacing: 14,
                      childAspectRatio: 0.9,
                      ),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Image.asset(MyAssets.assetsImagesNetflix).cornerRadius(10),
                          6.h.heightBox,
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                 "Netflix will Charge Money for Password Sharing"
                                 .text
                                 .medium
                               .make()
                               .expand(),
                               IconButton(onPressed: (){

                               }, 
                               icon: Icon(FeatherIcons.moreVertical))


                            ],
                          )
                        ],

                      );

                    })
                ],
              ),
            ),

        ],
      ),
    );
  }
}
