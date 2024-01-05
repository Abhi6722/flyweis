import 'package:get/get.dart';
import 'package:rajiv_cab_user_app/controllers/login_controller.dart';

class AllBinder extends Bindings{
  @override
  void dependencies(){
    Get.put(LoginController(), permanent: true);
  }
}