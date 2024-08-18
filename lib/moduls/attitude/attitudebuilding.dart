import 'package:get/get.dart';
import 'package:untitled3/moduls/attitude/attitudecontroller.dart';
class AttitudBind implements Bindings{
   @override
   void dependencies() {
        Get.lazyPut(() => Attitudecontroller()); 
      }
}