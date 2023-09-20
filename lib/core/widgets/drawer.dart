import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../resources/color_manager.dart';
import 'Custom_Text.dart';


class MainDrawer extends StatefulWidget {
  const MainDrawer({Key ? key}) : super(key: key);

  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {

  bool show=false;


  @override
  void initState() {
    super.initState();

  }

  @override
  void dispose() {

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final box=GetStorage();
    String email=box.read('email')??"x";




    return Drawer(
        backgroundColor: Colors.white,
        child: SafeArea(
            child: SingleChildScrollView(
                child: Column(
                    children: <Widget>[
                      Container(
                        height: 20,
                        color: ColorManager.primary,
                      ),
                   const SizedBox(height: 40,),

                      const SizedBox(height: 25,),
                      InkWell(
                          child: ItemWidget(
                              Icons.settings,'الاعدادات'
                          ),
                      onTap:(){
                          //  Get.to(const HomeView());
                      },
                      ),

                      const SizedBox(height: 25,),
                InkWell(
                    child: ItemWidget(
                        Icons.edit_calendar_sharp,'تعديل معلومات الحساب'
                    ),
                onTap:(){

                },
                ),
                      const SizedBox(height: 25,),
                InkWell(
                    child: ItemWidget(
                        Icons.logout,'تسجيل خروج '
                    ),
                onTap:(){

                },
                ),
                      const SizedBox(height: 25,),



                    ]))));
  }

}

Widget ItemWidget(IconData icon,String txt){
  return Row(
    children: [
      const SizedBox(width: 20,),
      Icon(icon,size:39,
      color:ColorManager.primary,
      ),
      const SizedBox(width: 20,),
      Custom_Text(text: txt,
      color:ColorManager.textColorDark,
      fontSize:19,alignment:Alignment.center,
      )

    ],
  );
}





