import 'package:get/get.dart';
import 'package:untitled3/moduls/homework/homeworkcontroller.dart';
class Homeworkbuild implements Bindings{
   @override
   void dependencies() {
       // Get.put<RegisterController>(RegisterController() );
       Get.lazyPut(() => Homeworkcontroller()); 
      }
}