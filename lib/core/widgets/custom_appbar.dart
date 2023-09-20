


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jail_app/core/resources/color_manager.dart';

import 'Custom_Text.dart';


PreferredSizeWidget CustomAppBar(String text,bool leading,double height){

  return AppBar(
    toolbarHeight: height,
    elevation:0.0,
    backgroundColor:ColorManager.appBarColor,
    title:Center(
      child: Custom_Text(text: text,
      fontSize: 24,color:ColorManager.textColorLight,
      alignment:Alignment.center,
        fontWeight:FontWeight.w600,
      ),
    ),
    leading:(leading==true)?
    IconButton(onPressed: (){
      Get.back();
    }, icon: Icon(Icons.arrow_back_ios,size: 28,
    color:ColorManager.iconColor,
    ))
    :const SizedBox()
  );
}