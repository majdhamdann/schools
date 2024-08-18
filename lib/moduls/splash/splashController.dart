import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:untitled3/moduls/splash/splashServer.dart';
import 'package:untitled3/native_sev/secure_storage.dart';

class Splashcontroller extends GetxController{
  late SecureStorage storage;
  late bool vaildToken;
  late Splashserver _splashserver;
 @override
  void onInit() async{
     storage = SecureStorage();
     vaildToken=false;
     _splashserver=Splashserver();
    await checkToken();
    super.onInit();
  }
  Future <void> checkToken() async{
   String? token=await storage.read('token');
   if(token!=null){
    await tokenvild(token);
    if(vaildToken){
       Get.offAllNamed('/home');
    }
     else{
      EasyLoading.showError(_splashserver.massege);
        Get.offAllNamed('/login');
     }
   }
   else
   {
      Get.offNamed('page');
   }
  }
  Future<void>tokenvild(String token) async{
    vaildToken=await _splashserver.chekvaild(token);
  }
}