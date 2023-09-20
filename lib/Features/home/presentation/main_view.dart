


 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jail_app/Features/auth/presentation/login.dart';
import 'package:jail_app/Features/auth/presentation/signup_view.dart';
import 'package:jail_app/core/resources/color_manager.dart';
import 'package:jail_app/core/widgets/Custom_Text.dart';
import 'package:jail_app/core/widgets/Custom_button.dart';
import 'package:jail_app/core/widgets/custom_appbar.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:CustomAppBar('', false, 5),
      body:ListView(
        children: [
          Row(
            children: [
              SizedBox(
                height: 100,
                child: Image.asset('assets/images/aml.png'),
              ),
              SizedBox(
                height: 120,
                child: Image.asset('assets/images/img.jpeg'),
              ),
            ],
          ),
          SizedBox(height: 10,),
          //SizedBox(height: 11,),
          Custom_Text(text: 'اسعدهم من مكانك ',
            fontSize:22,color:Colors.grey,
            fontWeight:FontWeight.w400,
          ),
          SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Custom_Text(text: 'تطبيق امل هو تطبيق يسهل علي اهالي النزلاء تحويل الاموال اليهم دون الحاجة للوصول الي مراكز الاصلاح و التاهيل بطريقة امنة و سريعة و باقل التكاليف',
              fontSize:15,color:Colors.black,
              fontWeight:FontWeight.w400,

            ),
          ),
          SizedBox(height: 11,),
          Container(
            width: MediaQuery.of(context).size.width,
            child:Image.asset('assets/images/free.webp'),
          ),
          SizedBox(height: 11,),
          Divider(),


          Padding(
            padding: const EdgeInsets.all(15.0),
            child: CustomButton(text: 'تسجيل دخول', onPressed: (){
              Get.to(LoginView());
            }, color1: ColorManager.buttonColor, color2: ColorManager.buttonColor2),
          ),

          SizedBox(height: 13,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: CustomButton(text: 'انشاء حساب', onPressed: (){
              Get.to(SignupView());
            }, color1: ColorManager.buttonColor, color2: ColorManager.buttonColor2),
          )
        ],
      ),
    );
  }
}
