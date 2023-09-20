
import 'package:get/get.dart';

import '../../Features/auth/Manager/auth_controller.dart';
import '../../Features/home/Manager/home_controller.dart';


class MyBinding implements Bindings{
  @override
  void dependencies() {
     // Get.lazyPut(() => NearbyController(),fenix: true);
     Get.lazyPut(() => AuthController(),fenix: false);
     Get.lazyPut(() => HomeController(),fenix: false);
     // Get.lazyPut(() => OffersController(),fenix: false);
  }
}