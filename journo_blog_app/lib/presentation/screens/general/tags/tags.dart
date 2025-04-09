import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:journo_blog_app/core/constants/my_colors.dart';
import 'package:velocity_x/velocity_x.dart';

class Tags extends StatefulWidget {
  const Tags({super.key});

  @override
  State<Tags> createState() => _TagsState();
}

class _TagsState extends State<Tags> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        centerTitle: true,
        title: "Tags".text.size(16.sp).color(MyColors.white).make(),
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
              title: "Tags".text.size(16).make(),
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