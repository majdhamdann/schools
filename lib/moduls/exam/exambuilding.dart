import 'package:get/get.dart';
import 'package:untitled3/moduls/exam/examcontroller.dart';
class Exambuilding implements Bindings{
   @override
   void dependencies() {
       // Get.put<RegisterController>(RegisterController() );
       Get.lazyPut(() => ExamsController()); 
      }
}