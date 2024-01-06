import 'package:get/get.dart';
import 'package:rajiv_cab_user_app/controllers/auth_controller.dart';
import 'package:rajiv_cab_user_app/controllers/notification_controller.dart';
import 'package:rajiv_cab_user_app/controllers/wallet_controller.dart';

class AllBinder extends Bindings{
  @override
  void dependencies(){
    Get.put(AuthController(), permanent: true);
    Get.put(NotificationController(), permanent: true);
    Get.put(WalletController(), permanent: true);
  }
}