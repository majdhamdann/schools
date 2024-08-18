import 'package:get/get.dart';
import 'package:untitled3/moduls/student/studentcontroller.dart';
class Stubentbuilding implements Bindings{
   @override
   void dependencies() {
       // Get.put<RegisterController>(RegisterController() );
       Get.lazyPut(() => studenttable()); 
      }
}