

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jail_app/Features/home/presentation/home_view.dart';
import 'package:jail_app/core/resources/color_manager.dart';
import 'package:jail_app/core/widgets/Custom_Text.dart';
import 'package:jail_app/core/widgets/Custom_button.dart';
import 'package:jail_app/core/widgets/custom_appbar.dart';

class DoneView extends StatelessWidget {
  const DoneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBar('', false, 45),
      body:Column(
        children: [
          const SizedBox(height: 31,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child:Image.asset('assets/images/done.png'),
            ),
          ),
          const SizedBox(height: 11,),
          const Custom_Text(text: 'تم ارسال المبلغ ',
          fontSize:17,color:Colors.black,
            alignment:Alignment.center,
          ),
          const SizedBox(height: 30,),
          CustomButton(text: 'الرجوع الي الصفحة الرئيسية', onPressed:
          (){
            Get.offAll(const HomeView());
          }, color1:ColorManager.buttonColor
              , color2: ColorManager.buttonColor2)
        ],
      ),
    );
  }
}
