import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:journo_blog_app/core/constants/my_colors.dart';
import 'package:velocity_x/velocity_x.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        centerTitle: true,
        title: "Categories".text.size(16.sp).color(MyColors.white).make(),
        automaticallyImplyLeading: false, //  for removing back button
        actions: [IconButton(onPressed: () {}, icon: Icon(FeatherIcons.plus))],
      ),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) => const SizedBox(height: 20),
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: "${index + 1}".text.size(16).make(),
              title: "Enter".text.size(16).make(),
              trailing: SizedBox(
                width: 100,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FeatherIcons.edit2,
                        color: MyColors.secondaryColor,
                      ),
                    ),

                    IconButton(
                      onPressed: () {},
                      icon: Icon(FeatherIcons.trash, color: MyColors.red),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
