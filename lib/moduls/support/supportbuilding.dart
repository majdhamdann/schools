import 'package:get/get.dart';
import 'package:untitled3/moduls/suppliers/suppliercontroller.dart';
import 'package:untitled3/moduls/support/supportcontroller.dart';

class Supportbuilding implements Bindings{
   @override
   void dependencies() {
       // Get.put<RegisterController>(RegisterController() );
       Get.lazyPut(() => SupportController()); 
      }
}