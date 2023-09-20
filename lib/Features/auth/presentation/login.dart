

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jail_app/Features/auth/Manager/auth_controller.dart';
import 'package:jail_app/core/resources/color_manager.dart';
import 'package:jail_app/core/widgets/Custom_Text.dart';
import 'package:jail_app/core/widgets/Custom_button.dart';
import 'package:jail_app/core/widgets/custom_appbar.dart';
import 'package:jail_app/core/widgets/custom_textformfield.dart';

import 'otp_view.dart';

class LoginView extends GetView<AuthController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AuthController());
    return Scaffold(
      appBar:CustomAppBar('', false, 5),
      body:Padding(
        padding: const EdgeInsets.all(1.0),
        child: ListView(
          children: [

            SizedBox(
              height: 100,
              child: Image.asset('assets/images/aml.png'),
            ),
            const SizedBox(height: 15,),
            Custom_Text(text: 'اسعدهم من مكانك ',
              color:Colors.grey,fontWeight: FontWeight.w400,
              alignment:Alignment.center,fontSize:19,
            ),

            // const SizedBox(height: 15,),
            // SizedBox(
            //   width: MediaQuery.of(context).size.width,
            //   height: 220,
            //   child:Image.asset('assets/images/free.webp',
            //     fit: BoxFit.contain,
            //   ),
            // ),
            // SizedBox(height: 5,),
            Divider(),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: CustomTextFormField(hint: 'رقم الهاتف ',
                  obx: false, ontap: (){
                  }, type: TextInputType.phone,
                  obs: false, color: Colors.black
                  , controller: controller.phoneController),
            ),
            const SizedBox(height: 26,),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: CustomButton(text: 'تسجيل الان  ',
                  onPressed: (){

                    Get.to(const OtpView());

                  }, color1: ColorManager.buttonColor
                  , color2: ColorManager.buttonColor2),
            )
          ],
        ),
      ),
    );
  }
}
