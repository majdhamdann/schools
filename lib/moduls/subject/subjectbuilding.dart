import 'package:get/get.dart';
import 'package:untitled3/moduls/subject/subjectController.dart';
class Subjectbuilding implements Bindings{
   @override
   void dependencies() {
       // Get.put<RegisterController>(RegisterController() );
         Get.lazyPut(() => Subjectcontroller()); 
      }
}