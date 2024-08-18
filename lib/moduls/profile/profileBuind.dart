import 'package:get/get.dart';
import 'package:untitled3/moduls/profile/profilecontroller.dart';

class Profilebuind implements Bindings{
   @override
   void dependencies() {
       // Get.put<RegisterController>(RegisterController() );
       Get.lazyPut(() => Profilecontroller()); 
      }
}