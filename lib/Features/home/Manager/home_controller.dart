import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{


  TextEditingController codeController=TextEditingController();
  TextEditingController priceController=TextEditingController();
  String selectedRadioValue = 'Visa';
  bool checkBoxValue1 = false;
  bool checkBoxValue2 = false;


  chnageCheckBox(bool value){
    checkBoxValue1 = value;
    update();
  }
  chnageCheckBox2(bool value){
    checkBoxValue2 = value;
    update();
  }
  setSelectedRadioValue(String value) {

      selectedRadioValue = value;
          update();
  }
}