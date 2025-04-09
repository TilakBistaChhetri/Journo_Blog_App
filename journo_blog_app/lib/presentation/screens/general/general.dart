import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../../../core/constants/my_colors.dart';
import 'add_posts/add_posts.dart';
import 'categories/categories.dart';
import 'home/home.dart';
import 'profile/profile.dart';
import 'tags/tags.dart';

class General extends StatefulWidget {
  const General({super.key});

  @override
  State<General> createState() => _GeneralState();
}

class _GeneralState extends State<General> {

  List<TabItem> items = [
  TabItem(
    icon: FeatherIcons.home,
  ),
  TabItem(
    icon: FeatherIcons.tag,
    //title: 'Shop',
  ),
  TabItem(
    icon: FeatherIcons.plus,
    //title: 'Wishlist',
  ),
  TabItem(
    icon: FeatherIcons.hash,
    //title: 'Cart',
  ),
  TabItem(
    icon: FeatherIcons.user,
    //title: 'profile',
  ),
];
int visit =0;
List<Widget> pages = [
  Home(),
  Categories(),
  AddPosts(),
  Tags(),
  Profile(),
];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: pages.elementAt(visit),

      bottomNavigationBar:  BottomBarCreative(
              items: items,
              backgroundColor: Colors.white,
              color: MyColors.primaryColor.withOpacity(0.3),
              colorSelected: MyColors.primaryColor,
              indexSelected: visit,
              onTap: (int index) => setState(() {
                visit = index;
                setState(() {
                  visit = index;
                  print(visit);
                });
              }),
            ),
    );
  }
}