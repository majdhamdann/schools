import 'package:get/get.dart';
//import 'package:untitled3/moduls/attendence/attendencecontroller.dart';
import 'package:untitled3/moduls/suppliers/suppliercontroller.dart';

class Supplierbuilding implements Bindings{
   @override
   void dependencies() {
       // Get.put<RegisterController>(RegisterController() );
       Get.lazyPut(() => Suppliercontroller()); 
      }
}