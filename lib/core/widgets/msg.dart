

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../resources/color_manager.dart';


 appMessage ({required String text}){
  Get.snackbar ("   $text ", '',
      colorText:ColorManager.primary,
      backgroundColor:Colors.black45,

      icon:const Icon(Icons.app_shortcut,color:Colors.white,size:33,)
  );
 }