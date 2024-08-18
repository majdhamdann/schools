import 'package:get/get.dart';
import 'package:untitled3/moduls/marks/markController.dart';
class Markbuilding implements Bindings{
   @override
   void dependencies() {
       // Get.put<RegisterController>(RegisterController() );
       Get.lazyPut(() => Markcontroller()); 
      }
}