import 'package:get/get.dart';
import 'package:untitled3/moduls/attendence/attendencecontroller.dart';

class Attendbuilding implements Bindings{
   @override
   void dependencies() {
       // Get.put<RegisterController>(RegisterController() );
       Get.lazyPut(() => AttendanceController()); 
      }
}