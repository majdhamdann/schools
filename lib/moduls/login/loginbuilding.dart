import 'package:get/get.dart';
import 'package:untitled3/moduls/login/loginController.dart';

class Loginbuilding implements Bindings{
   @override
   void dependencies() {
       // Get.put<RegisterController>(RegisterController() );
       Get.lazyPut(() => LoginController()); 
      }
}