import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
// import 'package:flutter_quill/flutter_quill.dart' as quill show QuillEditor;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:journo_blog_app/core/constants/my_assets.dart';
import 'package:velocity_x/velocity_x.dart';
//import 'package:flutter_quill/flutter_quill.dart';

import '../../../../core/constants/my_colors.dart';

class AddPosts extends StatefulWidget {
  const AddPosts({super.key});

  @override
  State<AddPosts> createState() => _AddPostsState();
}

class _AddPostsState extends State<AddPosts> {
  //QuillController _controller = QuillController.basic();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        centerTitle: true,
        title: "Add Post".text.make(),
        automaticallyImplyLeading: false, //  for removing back button
        actions: [IconButton(onPressed: () {}, 
        icon: Icon(FeatherIcons.check),
        ),
        ],
      ),
       body:ListView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        children: [
             20.h.heightBox,
         Stack(
      
          alignment: Alignment.bottomRight,
          children:[
             
            Image.asset(MyAssets.assetsImagesimageplaceholder),
            IconButton(onPressed: () {

            },
             icon: Icon(FeatherIcons.camera, color: MyColors.primaryColor),
             )
          ]
          ),
             20.h.heightBox,
            const VxTextField(
            fillColor: Colors.transparent,
            borderColor: MyColors.primaryColor,
            borderType: VxTextFieldBorderType.roundLine,
            borderRadius: 10,
            hint: "Title "                
           ),

            20.h.heightBox,
            const VxTextField(
            fillColor: Colors.transparent,
            borderColor: MyColors.primaryColor,
            borderType: VxTextFieldBorderType.roundLine,
            borderRadius: 10,
            hint: "Slug"                
           ),
           20.h.heightBox,

            Container(
            height:60,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: MyColors.white,
              borderRadius: BorderRadius.circular(10)

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "Tags".text.make(),
                  const Icon(FeatherIcons.chevronRight),

              ],
            )
           ),
            20.h.heightBox,

           Container(
            height:60,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: MyColors.white,
              borderRadius: BorderRadius.circular(10)

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "Categories".text.make(),
                  const Icon(FeatherIcons.chevronRight),

              ],
            )
           ),
      //         20.h.heightBox,
      //      QuillToolbar.basic(
      //        controller: _controller,
      //    ),
      //   SizedBox(
      //   height:500,
      
      //  child:QuillEditor.basic(
      //  controller: _controller,
      //  readOnly: false,
      //  ),
      //  )

       
        ],
       )

    );
  }
}