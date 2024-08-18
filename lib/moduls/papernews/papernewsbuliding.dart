import 'package:get/get.dart';
import 'package:untitled3/moduls/papernews/papernewscontroller.dart';
class Papernewsbuliding implements Bindings{
   @override
   void dependencies() {
       // Get.put<RegisterController>(RegisterController() );
       Get.lazyPut(() => PapernewsController()); 
      }
}