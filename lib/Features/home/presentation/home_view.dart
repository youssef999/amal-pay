


 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jail_app/Features/home/Manager/home_controller.dart';
import 'package:jail_app/core/resources/color_manager.dart';
import 'package:jail_app/core/widgets/Custom_Text.dart';
import 'package:jail_app/core/widgets/Custom_button.dart';
import 'package:jail_app/core/widgets/custom_appbar.dart';
import 'package:jail_app/core/widgets/custom_textformfield.dart';
import 'package:jail_app/core/widgets/msg.dart';

import '../../../core/widgets/drawer.dart';
import 'done_view.dart';

class HomeView  extends StatefulWidget {

  const HomeView ({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final controller=Get.put(HomeController());

  @override
  Widget build(BuildContext context) {




    Get.put(HomeController());
    return Scaffold(
      key: scaffoldKey,
      backgroundColor:Colors.white,
      appBar:AppBar(
        backgroundColor: ColorManager.primary,
        toolbarHeight: 41,
        leading:InkWell(child: Icon(Icons.drag_handle,
        size: 45,color:Colors.white,
        ),
        onTap:(){
          scaffoldKey.currentState!.openDrawer();
        },
        ),
      ),
      drawer: MainDrawer(),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
                child: Image.asset('assets/images/aml.png'),
              ),
              SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width*0.6,
                child:Image.asset('assets/images/img.jpeg'),
              ),
            ],
          ),


          SizedBox(height: 11,),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Custom_Text(text: 'تطبيق امل هو تطبيق يسهل علي اهالي النزلاء تحويل الاموال اليهم دون الحاجة للوصول الي مراكز الاصلاح و التاهيل بطريقة امنة و سريعة و باقل التكاليف',
              fontSize:15,color:Colors.black,
              fontWeight:FontWeight.w400,

            ),
          ),
          SizedBox(height: 10,),
          Divider(),
          SizedBox(height: 10,),
          const Custom_Text(text: 'قم بارسال الاموال الان ',
          fontSize: 26,alignment:Alignment.center,
          ),
          Custom_Text(text: 'اسعدهم من مكانك ',
            color:Colors.grey,fontWeight: FontWeight.w400,
            alignment:Alignment.center,fontSize:19,
          ),
          const SizedBox(height: 15,),

          Form(
            key: formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CustomTextFormField(hint: 'رمز النزيل ',
                      obx: false, ontap:(){
                      }, type: TextInputType.number
                      , obs: false,
                      color: ColorManager.textColorDark
                      , controller: controller.codeController),
                ),
                const SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CustomTextFormField(hint: 'المبلغ المراد تحويله  ',
                      obx: false, ontap:(){

                      }, type: TextInputType.number
                      , obs: false, color: ColorManager.textColorDark
                      , controller:
                      controller.priceController),
                ),
              ],
            ),
          ),


          const SizedBox(height: 15,),
          const Custom_Text(text: 'طريقة الدفع ',
          fontSize: 22,alignment:Alignment.center,
          ),
          GetBuilder<HomeController>(
            builder: (context) {
              return Column(
                children: [
                  RadioListTile(
                    title: const Text('فيزا '),
                    value: 'فيزا ',
                    groupValue: controller.selectedRadioValue,
                    onChanged: (val){
                      controller.setSelectedRadioValue(val.toString());
                    }
                  ),
                  const SizedBox(height: 5,),
                  RadioListTile(
                      title: const Text('ماستر كارد'),
                      value: 'ماستر كارد',
                      groupValue: controller.selectedRadioValue,
                      onChanged: (val){
                        controller.setSelectedRadioValue(val.toString());
                      }
                  ),
                  const SizedBox(height: 5,),
                  RadioListTile(
                      title: const Text('باي بال'),
                      value: 'باي بال',
                      groupValue: controller.selectedRadioValue,
                      onChanged: (val){
                        controller.setSelectedRadioValue(val.toString());
                      }
                  ),
                  const SizedBox(height: 5,),
                  RadioListTile(
                      title: const Text('محفظة الكترونية '),
                      value: 'محفظة الكترونية',
                      groupValue: controller.selectedRadioValue,
                      onChanged: (val){
                        controller.setSelectedRadioValue(val.toString());
                      }
                  ),
                  const SizedBox(height: 5,),
                  const Divider(),
                  const SizedBox(height: 6,),
                  CheckboxListTile(
                    title: const Text('اوافق علي الشروط و التعليمات '),
                    value: controller.checkBoxValue1,
                    onChanged: (value) {
                      controller.chnageCheckBox(value!);
                    },
                  ),
                  const SizedBox(height: 6,),
                  CheckboxListTile(
                    title: const Text('اتعهد بتحمل كافة المسؤولية  '),
                    value: controller.checkBoxValue2,
                    onChanged: (value) {
                      controller.chnageCheckBox2(value!);
                    },
                  ),
                ],
              );
            }
          ),
          const SizedBox(height: 6,),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomButton(text: 'ارسال الان ',
                onPressed:()
                {
                  Get.off(const DoneView());
                  appMessage(text: 'تم ارسال المبلغ ');
                }, color1: ColorManager.buttonColor,
                color2: ColorManager.buttonColor2),
          )
        ],
      ),
    );
  }
}
