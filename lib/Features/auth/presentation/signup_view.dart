

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jail_app/Features/auth/Manager/auth_controller.dart';
import 'package:jail_app/core/resources/color_manager.dart';
import 'package:jail_app/core/widgets/Custom_Text.dart';
import 'package:jail_app/core/widgets/Custom_button.dart';
import 'package:jail_app/core/widgets/custom_appbar.dart';
import 'package:jail_app/core/widgets/custom_textformfield.dart';
import 'package:jail_app/core/widgets/msg.dart';
import 'otp_view.dart';

  class SignupView extends GetView<AuthController> {
  const SignupView({super.key});

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

            const SizedBox(height: 15,),

          // Container(
          //   decoration:BoxDecoration(
          //     border:Border.all(color:Colors.black)
          //   ),
          //     width: MediaQuery.of(context).size.width,
          //     height: 220,
          //     child:Image.asset('assets/images/free.webp',
          //     fit: BoxFit.contain,
          //     ),
          //   ),
          //   const SizedBox(height: 21,),
            Divider(),
            const SizedBox(height: 21,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextFormField(hint: 'الاسم الرباعي',
                  obx: false, ontap: (){

                  }, type: TextInputType.text, obs: false, color: Colors.black
                  , controller: controller.nameController),
            ),
            const SizedBox(height: 23,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextFormField(hint: 'الرقم الوطني  ',
                  obx: false, ontap: (){

                  }, type: TextInputType.text, obs: false, color: Colors.black
                  , controller: controller.idController),
            ),
            const SizedBox(height: 23,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextFormField(hint: 'البريد الالكتروني ',
                  obx: false, ontap: (){

                  }, type: TextInputType.text, obs: false, color: Colors.black
                  , controller: controller.emailController),
            ),
            const SizedBox(height: 23,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextFormField(hint: 'الرمز السري ',
                  obx: true, ontap: (){

                  }, type: TextInputType.visiblePassword
                  , obs: true, color: Colors.black
                  , controller: controller.passController),
            ),
            const SizedBox(height: 23,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextFormField(hint: 'تاكيد الرمز السري ',
                  obx: true, ontap: (){

                  }, type: TextInputType.visiblePassword,
                  obs: true,
                  color: Colors.black
                  , controller: controller.passCheckController),
            ),
            const SizedBox(height: 23,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextFormField(hint: 'رقم الهاتف ',
                  obx: false, ontap: (){

                  }, type: TextInputType.phone,
                  obs: false, color: Colors.black
                  , controller: controller.phoneController),
            ),
            const SizedBox(height: 13,),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: CustomButton(text: 'انشاء حساب ',
                  onPressed: (){
                    Get.to(const OtpView());

                  }, color1: ColorManager.buttonColor
                  , color2: ColorManager.buttonColor2),
            ),
            const SizedBox(height: 13,),
          ],
        ),
      ),
    );
  }
}
