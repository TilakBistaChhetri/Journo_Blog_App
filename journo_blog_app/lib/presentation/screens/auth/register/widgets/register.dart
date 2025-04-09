import 'package:animation_wrappers/animations/faded_scale_animation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../../core/constants/my_assets.dart' show MyAssets;
import '../../../../../core/constants/my_colors.dart' show MyColors;
import '../../../../commmon_widgets/primary_button.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.primaryColor,
        body:SingleChildScrollView(
          child: SafeArea(
                
            child: FadedScaleAnimation(
              child: Column(
                children: [
                  Center(
                          child: Image.asset(
                            MyAssets.mainLogo,
                            height: 42.h,
                            width: 139.w,
                          ),
                        ),
                        100.h.heightBox,
              
                        Container(
                          height:MediaQuery.sizeOf(context).height,
                           width:MediaQuery.sizeOf(context).height,
                           decoration: BoxDecoration(
                            color: MyColors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(36),
                              topRight: Radius.circular(36),
                            )
                           ),
                           child:Padding(
                             padding: const EdgeInsets.symmetric(horizontal:24),
                             child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                50.h.heightBox,
                              Text("Register", style:TextStyle(color: MyColors.primaryColor,
                              fontSize:18.sp, fontWeight:FontWeight.w700)) ,
                              48.h.heightBox,
                              Text("Email"),
                              8.h.heightBox,
                              const VxTextField(
                                fillColor: Colors.transparent,
                                borderColor: MyColors.primaryColor,
                                borderType: VxTextFieldBorderType.roundLine,
                                borderRadius: 10,
                                hint: "bikash123@gmail.com",
                                prefixIcon: Icon(Icons.email),
                              ),
                  
                                  20.h.heightBox,
                              Text("Password"),
                              8.h.heightBox,
                              const VxTextField(
                                obscureText: true,
                                isPassword: true,
                                fillColor: Colors.transparent,
                                borderColor: MyColors.primaryColor,
                                borderType: VxTextFieldBorderType.roundLine,
                                borderRadius: 10,
                                prefixIcon: Icon(Icons.lock),
                              ),
                        
                                  20.h.heightBox,
                              Text("Confirm Password"),
                              8.h.heightBox,
                              const VxTextField(
                                obscureText: true,
                                isPassword: true,
                                fillColor: Colors.transparent,
                                borderColor: MyColors.primaryColor,
                                borderType: VxTextFieldBorderType.roundLine,
                                borderRadius: 10,
                                prefixIcon: Icon(Icons.lock),
                              ),
                  
                              40.h.heightBox,
                  
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width:220,
                                    child: CheckboxListTile(
                                      contentPadding: EdgeInsets.zero,
                                      value: false, 
                                    controlAffinity: ListTileControlAffinity.leading,
                                    onChanged: (value) {}, title: "Rememer Me".text.make())),
                                  
                                ],
                              ),
                                40.h.heightBox,
                  
                              PrimaryButton(
                                title:"Register",
                                 onPressed:() {
                                   context.go("/general");
                                 }
                                  ),
                                  
                              20.h.heightBox,
                  
                                  "Already Have an account ?".richText.size(14).semiBold
                                  .color(MyColors.primaryColor,)
                                  .withTextSpanChildren([
                                    TextSpan(
                                      text: "Login",
                                      recognizer: TapGestureRecognizer()..onTap=() {
                                        context.go("/login"); 
                                      },
                                      style:TextStyle(fontWeight: FontWeight.w700),
                                    )
                  
                                  ]).makeCentered(),
                                                 ],
                             ),
                           )
                        )
                ],
              ),
            ),
          ),
        )
      
      );
    
  }
}