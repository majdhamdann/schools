import 'package:get/get.dart';
import 'package:untitled3/moduls/register/registerController.dart';

class RegisterBuilding implements Bindings{
   @override
   void dependencies() {
       // Get.put<RegisterController>(RegisterController() );
       Get.lazyPut(() => RegisterController()); 
      }
}