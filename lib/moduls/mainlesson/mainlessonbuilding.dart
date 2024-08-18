import 'package:get/get.dart';
import 'package:untitled3/moduls/mainlesson/mainlessoncontroller.dart';
class Mainlessonbuilding implements Bindings{
   @override
   void dependencies() {
       // Get.put<RegisterController>(RegisterController() );
       Get.lazyPut(() => Mainlessoncontroller()); 
      }
}